import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Returns true if the provided ip address is of of the white listed
/// Stripe webhook ip addresses.
bool isValidWebhookIpAddress(String ipAddress) {
  return [
    '54.187.174.169',
    '54.187.205.235',
    '54.187.216.72',
    '54.241.31.99',
    '54.241.31.102',
    '54.241.34.107',
  ].contains(ipAddress);
}

/// Returns wether the signature is correctyl signed and within the
/// tolerated time window.
bool isValidWebhookSignature(String signature, String body,
    String signingSecret, Duration timeTolerance) {
  if (signature == null) return false;
  final regexp = RegExp(r'\[t=(\d+),v1=(.+),v0=(.+)\]');
  final match = regexp.firstMatch(signature);
  // Test for signature syntax.
  if (match == null) return false;
  final timestamp = int.parse(match.group(1));
  var time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  final signatureHash = createSignedHash(timestamp, body, signingSecret);
  // Test for valid signature signing.
  final testSignature = match.group(2);
  if (signatureHash != testSignature) {
    return false;
  } else {
    // Test for valid signature timestamp.
    final difference = time.difference(DateTime.now()).abs();
    final compare = difference.compareTo(timeTolerance);
    if (compare > 0) return false;
  }
  return true;
}

String createSignedHash(int timestamp, String body, String signingSecret) {
  final message = '$timestamp.$body';
  final key = utf8.encode(signingSecret);
  final hmacSha256 = Hmac(sha256, key);
  final digest = hmacSha256.convert(utf8.encode(message));
  return digest.toString();
}
