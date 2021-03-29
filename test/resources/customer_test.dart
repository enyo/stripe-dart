import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/customer.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late CustomerResource customerResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    customerResource = CustomerResource(client);
  });
  group('CustomerResource', () {
    test('properly decodes all values', () async {
      final request = CreateCustomerRequest();

      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(options.uri, Uri.parse('http://void/customers'));
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(createCustomerResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await customerResource.create(request);

      expect(response.id, 'cus_JC3alB0zcgmLbY');
      expect(response.email, 'foo@bar.com');
    });
  });
}

const createCustomerResponse = r'''
{
  "id": "cus_JC3alB0zcgmLbY",
  "object": "customer",
  "address": null,
  "balance": 0,
  "created": 1616864327,
  "currency": "eur",
  "default_source": null,
  "delinquent": false,
  "description": "My First Test Customer (created for API docs)",
  "discount": null,
  "email": "foo@bar.com",
  "invoice_prefix": "3831940",
  "invoice_settings": {
    "custom_fields": null,
    "default_payment_method": null,
    "footer": null
  },
  "livemode": false,
  "metadata": {},
  "name": null,
  "phone": null,
  "preferred_locales": [],
  "shipping": null,
  "tax_exempt": "none"
}
''';
