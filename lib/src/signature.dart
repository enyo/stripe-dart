import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:stripe/src/exceptions.dart';

class Signature {

  Signature(String input) {
    if (input.isEmpty) {
      throw InvalidSignatureException('Signature was null.');
    }
    input = input.replaceAll('[', '').replaceAll(']', '');
    final parts = input.split(',');
    if (parts.length < 2) {
      throw InvalidSignatureException('Not enough parts: $input');
    }
    for (final part in parts) {
      final partSegments = part.split('=');
      if (partSegments.length != 2) continue;
      final key = partSegments.first;
      final value = partSegments.last;
      switch (key) {
        case 't':
          try {
            _timestamp = int.parse(value);
          } catch (e) {
            throw InvalidSignatureException('Unable to parse timestamp: $part');
          }
        case 'v1':
          _v1 = value;
      }
    }
    if (_timestamp == 0) {
      throw InvalidSignatureException('Missing timestamp: $input');
    }
    if (_v1.isEmpty) {
      throw InvalidSignatureException('Missing v1 signature: $input');
    }
  }
  late int _timestamp;

  late String _v1;

  bool isCorrectlySigned(String body, String signingSecret) {
    final signatureHash = _createSignatureHash(body, signingSecret);
    return signatureHash == _v1;
  }

  String _createSignatureHash(String body, String signingSecret) =>
      createSignatureHash(_timestamp, body, signingSecret);

  bool isValidSignatureTimestamp(Duration timeTolerance) {
    final time = DateTime.fromMillisecondsSinceEpoch(_timestamp * 1000);
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
