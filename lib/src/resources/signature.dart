import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:stripe/src/exceptions.dart';

class Signature {
  int timestamp;

  String v1;

  Signature(String input) {
    if (input == null) {
      throw InvalidSignatureException('Signature was null.');
    }
    input = input.replaceAll('[', '').replaceAll(']', '');
    final parts = input.split(',');
    if (parts.length < 2) {
      throw InvalidSignatureException('Not enough parts: $input');
    }
    for (var part in parts) {
      final partSegments = part.split('=');
      if (partSegments.length != 2) continue;
      final key = partSegments.first;
      final value = partSegments.last;
      switch (key) {
        case 't':
          try {
            timestamp = int.parse(value);
          } catch (e) {
            throw InvalidSignatureException('Unable to parse timestamp: $part');
          }
          break;
        case 'v1':
          v1 = value;
          break;
      }
    }
    if (timestamp == null) {
      throw InvalidSignatureException('Missing timestamp: $input');
    }
    if (v1 == null) {
      throw InvalidSignatureException('Missing v1 signature: $input');
    }
  }

  bool isCorrectlySigned(String body, String signingSecret) {
    final signatureHash = _createSignatureHash(body, signingSecret);
    return signatureHash == v1;
  }

  String _createSignatureHash(String body, String signingSecret) =>
      createSignatureHash(timestamp, body, signingSecret);

  bool isValidSignatureTimestamp(Duration timeTolerance) {
    var time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    if (time.add(timeTolerance).isBefore(DateTime.now())) {
      return false;
    }
    return true;
  }
}

String createSignatureHash(int timestamp, String body, String signingSecret) {
  final message = '$timestamp.$body';
  final key = utf8.encode(signingSecret);
  final hmacSha256 = Hmac(sha256, key);
  final digest = hmacSha256.convert(utf8.encode(message));
  return digest.toString();
}
