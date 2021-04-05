import 'dart:convert';

import 'package:stripe/messages.dart';
import 'package:test/test.dart';

void main() {
  group('CustomerEvent', () {
    test('properly decodes all values', () async {
      final message = CustomerEvent.fromJson(jsonDecode(eventObject));

      expect(message.data.object, isA<Customer>());

      expect(message.id, 'evt_1Icoy4CQQp28cFsCrf6ivStg');
      expect(message.data.object.id, 'cus_JFJbUdQXpTrx1g');
      expect(message.data.object.email, 'e@test.com');
    });
  });
}

const eventObject = r'''
{
  "id": "evt_1Icoy4CQQp28cFsCrf6ivStg",
  "object": "event",
  "api_version": "2020-08-27",
  "created": 1617615816,
  "data": {
    "object": {
      "id": "cus_JFJbUdQXpTrx1g",
      "object": "customer",
      "address": null,
      "balance": 0,
      "created": 1617615816,
      "currency": null,
      "default_source": null,
      "delinquent": false,
      "description": null,
      "discount": null,
      "email": "e@test.com",
      "invoice_prefix": "C3F0D0F0",
      "invoice_settings": {
        "custom_fields": null,
        "default_payment_method": null,
        "footer": null
      },
      "livemode": false,
      "metadata": {
        "projectId": "606adbc72ccc60c3c291c09a",
        "initialContactUserId": "606adbc72ccc60c3c291c098",
        "creationUserId": "606adbc72ccc60c3c291c098"
      },
      "name": null,
      "phone": null,
      "preferred_locales": [],
      "shipping": null,
      "tax_exempt": "none"
    }
  },
  "livemode": false,
  "pending_webhooks": 1,
  "request": {
    "id": "req_TXqqnYLKGM0xMT",
    "idempotency_key": null
  },
  "type": "customer.created"
}''';
