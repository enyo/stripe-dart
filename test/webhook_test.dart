import 'package:stripe/src/signature.dart';
import 'package:stripe/src/webhook.dart';
import 'package:test/test.dart';

void main() {
  group('isValidWebhookIpAddress()', () {
    test('should return false for any invalid ip address', () async {
      expect(isValidWebhookIpAddress('127.0.0.1'), isFalse);
    });
    test('should return true for a valid ip address', () async {
      expect(isValidWebhookIpAddress('54.187.174.169'), isTrue);
    });
  });

  group('isValidWebhookSignature()', () {
    late int timestamp;
    late String body;
    late String signingSecret;
    late String signature;
    late Duration timeTolerance;

    setUp(() {
      timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      body = '{"foo": "bar"}';
      signingSecret = 'secret';
      signature = getStripeSignature(timestamp, body, signingSecret);
      timeTolerance = Duration(minutes: 5);
    });

    test('should return false if the signature is empty', () async {
      expect(isValidWebhookSignature('', body, signingSecret, timeTolerance),
          isFalse);
    });
    test('should return false if the signature can not be parsed', () async {
      expect(
          isValidWebhookSignature(
              'invalid signature', body, signingSecret, timeTolerance),
          isFalse);
    });
    test('should return false if the timestamp is incorrect', () async {
      signature = getStripeSignature(0, body, signingSecret);
      expect(
          isValidWebhookSignature(
              signature, body, signingSecret, timeTolerance),
          isFalse);
    });

    test('should return false if the body is incorrect', () async {
      expect(
          isValidWebhookSignature(
              signature, '{"incorrect": "body"}', signingSecret, timeTolerance),
          isFalse);
    });

    test(
        'should return false if the timestamp is outside of the time tolerance',
        () async {
      signature = getStripeSignature(
          DateTime.now()
                  .subtract(Duration(minutes: 6))
                  .millisecondsSinceEpoch ~/
              1000,
          body,
          signingSecret);
      expect(
          isValidWebhookSignature(
              signature, body, signingSecret, timeTolerance),
          isFalse);
    });

    test('should return true if everthing is correct', () async {
      expect(
          isValidWebhookSignature(
              signature, body, signingSecret, timeTolerance),
          isTrue);
      signature = getTestStripeSignature(timestamp, body, signingSecret);
      expect(
          isValidWebhookSignature(
              signature, body, signingSecret, timeTolerance),
          isTrue);
      signature = getShuffledSignature(timestamp, body, signingSecret);
      expect(
          isValidWebhookSignature(
              signature, body, signingSecret, timeTolerance),
          isTrue);
    });
  });
}

String getStripeSignature(int timestamp, String body, String signingSecret) =>
    '[t=$timestamp,v1=${createSignatureHash(timestamp, body, signingSecret)}]';

String getTestStripeSignature(
        int timestamp, String body, String signingSecret) =>
    '[t=$timestamp,v1=${createSignatureHash(timestamp, body, signingSecret)},v0=0]';

String getShuffledSignature(int timestamp, String body, String signingSecret) =>
    '[v1=${createSignatureHash(timestamp, body, signingSecret)},t=$timestamp]';
