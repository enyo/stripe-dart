import 'package:dio/dio.dart';
import 'package:stripe/src/client.dart';
import 'package:test/test.dart';

void main() {
  group('Client', () {
    late Client client;
    const testApiKey = 'sk_test_example_key';

    setUp(() {
      client = Client(apiKey: testApiKey);
    });

    test('should create client with correct configuration', () {
      expect(client.apiKey, equals(testApiKey));
      expect(client.version, equals('2024-09-30.acacia'));
    });

    test('should configure dio instance correctly', () {
      expect(client.dio.options.baseUrl, equals('https://api.stripe.com/v2/'));
      expect(client.dio.options.contentType, equals('application/json'));
      expect(client.dio.options.responseType, equals(ResponseType.json));
      expect(
        client.dio.options.headers['Authorization'], 
        equals('Bearer $testApiKey'),
      );
      expect(
        client.dio.options.headers['Stripe-Version'], 
        equals('2024-09-30.acacia'),
      );
      expect(
        client.dio.options.headers['Content-Type'], 
        equals('application/json'),
      );
      expect(client.dio.options.headers['Idempotency-Key'], isNotNull);
    });

    test('should allow custom base URL and version', () {
      const customUrl = 'https://custom.stripe.com/v1/';
      const customVersion = '2023-10-16';
      
      final customClient = Client(
        apiKey: testApiKey,
        baseUrl: customUrl,
        version: customVersion,
      );
      
      expect(customClient.dio.options.baseUrl, equals(customUrl));
      expect(customClient.version, equals(customVersion));
      expect(
        customClient.dio.options.headers['Stripe-Version'], 
        equals(customVersion),
      );
    });
  });
}
