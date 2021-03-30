import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/checkout_session.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late CheckoutSessionResource checkoutSessionResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    checkoutSessionResource = CheckoutSessionResource(client);
  });
  group('CheckoutSessionResource', () {
    test('properly decodes all values', () async {
      final request = CreateCheckoutSessionRequest(
          successUrl: 'https://success',
          cancelUrl: 'https://cancel',
          paymentMethodTypes: [
            PaymentMethodType.card,
            PaymentMethodType.afterpay_clearpay
          ],
          customer: 'cus_JBeWftkPvAhbsN',
          lineItems: [
            LineItem(
              price: 'price_2234234',
              quantity: 1,
              images: ['http://imagefoobar'],
            )
          ]);

      expect(request.toJson()['payment_method_types'],
          ['card', 'afterpay_clearpay']);

      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(options.data, request.toJson());
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(createSessionResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await checkoutSessionResource.create(request);

      expect(response.id,
          'cs_test_TkmJFX7eEMan6f0W3q5n21sRgRraVzKf0BPTTmb0kn9yPBT9lr0ZJBVy');
      expect(response.paymentMethodTypes, [PaymentMethodType.card]);
    });
  });
}

const createSessionResponse = r'''
{
  "id": "cs_test_TkmJFX7eEMan6f0W3q5n21sRgRraVzKf0BPTTmb0kn9yPBT9lr0ZJBVy",
  "object": "checkout.session",
  "allow_promotion_codes": null,
  "amount_subtotal": null,
  "amount_total": null,
  "billing_address_collection": null,
  "cancel_url": "https://example.com/cancel",
  "client_reference_id": null,
  "currency": null,
  "customer": null,
  "customer_details": null,
  "customer_email": null,
  "livemode": false,
  "locale": null,
  "metadata": {},
  "mode": "payment",
  "payment_intent": "pi_1EUqMaAA7oWz99nSFM4ANx6C",
  "payment_method_types": [
    "card"
  ],
  "payment_status": "unpaid",
  "setup_intent": null,
  "shipping": null,
  "shipping_address_collection": null,
  "submit_type": null,
  "subscription": null,
  "success_url": "https://example.com/success",
  "total_details": null,
  "line_items": [
    {
      "price": "price_H5ggYwtDq4fbrJ",
      "quantity": 2
    }
  ]
}
''';
