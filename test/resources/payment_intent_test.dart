import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart'
    show Address, PaymentMethodType, SetupFutureUsage, ShippingSpecification;
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/payment_intent.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late PaymentIntentResource paymentIntentResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    paymentIntentResource = PaymentIntentResource(client);
  });
  group('PaymentIntentResource', () {
    test('properly decodes all values', () async {
      const id = 'pi_1EUqMaAA7oWz99nSFM4ANx6C';
      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(options.uri, Uri.parse('http://void/payment_intents/$id'));
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(createSessionResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await paymentIntentResource.retrieve(id);

      expect(response.id, 'pi_1EUqMaAA7oWz99nSFM4ANx6C');
      expect(response.status, 'requires_payment_method');
      expect(response.amount, 1099);
      expect(response.amountReceived, 999);
      expect(response.created?.toUtc(), DateTime.parse('2019-04-30 07:26:52Z'));
      expect(
          response.canceledAt?.toUtc(), DateTime.parse('2019-04-30 07:27:02Z'));
      expect(response.clientSecret,
          'pi_1EUqMaAA7oWz99nSFM4ANx6C_secret_5jzNKjsCSxoL7BNOm1Hg9DFX1');
      expect(response.currency, 'eur');
      expect(response.customer, 'cus_Mx8WVxMtgaJfkk');
      expect(response.description, 'some description');
      expect(response.latestCharge, 'ch_1IZI1WCQQp28cFsC3NZk4ERe');
      expect(response.metadata, {"foo": "bar"});
      expect(response.paymentMethod, "card");
      expect(response.paymentMethodTypes,
          {PaymentMethodType.card, PaymentMethodType.alipay});
      expect(response.receiptEmail, 'joe.schmoe@example.com');
      expect(response.setupFutureUsage, SetupFutureUsage.on_session);

      expect(response.shipping, isA<ShippingSpecification>());
      expect(response.shipping!.name, 'Jenny');
      expect(response.shipping!.carrier, 'Best Lucky Delivery');
      expect(response.shipping!.phone, '3128675309');
      expect(response.shipping!.trackingNumber, 'hideandseek');
      expect(response.shipping!.address, isA<Address>());
      expect(response.shipping!.address.city, 'somewhere');
      expect(response.shipping!.address.country, 'us');
      expect(response.shipping!.address.line1, '123 Fake St.');
      expect(response.shipping!.address.line2, 'POBOX nowhere');
      expect(response.shipping!.address.postalCode, '54321');
      expect(response.shipping!.address.state, 'zx');
      expect(response.statementDescriptor, 'super best codez');
      expect(response.statementDescriptorSuffix, 'for u!');
    });
  });
}

const createSessionResponse = r'''
{
  "id": "pi_1EUqMaAA7oWz99nSFM4ANx6C",
  "object": "payment_intent",
  "amount": 1099,
  "amount_capturable": 0,
  "amount_received": 999,
  "application": null,
  "application_fee_amount": null,
  "canceled_at": 1556609222,
  "cancellation_reason": null,
  "capture_method": "automatic",
  "client_secret": "pi_1EUqMaAA7oWz99nSFM4ANx6C_secret_5jzNKjsCSxoL7BNOm1Hg9DFX1",
  "confirmation_method": "automatic",
  "created": 1556609212,
  "currency": "eur",
  "customer": "cus_Mx8WVxMtgaJfkk",
  "description": "some description",
  "invoice": null,
  "last_payment_error": null,
  "latest_charge": "ch_1IZI1WCQQp28cFsC3NZk4ERe",
  "livemode": false,
  "metadata": {
    "foo": "bar"
  },
  "next_action": null,
  "on_behalf_of": null,
  "payment_method": "card",
  "payment_method_options": {},
  "payment_method_types": [
    "card",
    "alipay"
  ],
  "receipt_email": "joe.schmoe@example.com",
  "review": null,
  "setup_future_usage": "on_session",
  "shipping": {
    "address": {
      "city": "somewhere",
      "country": "us",
      "line1": "123 Fake St.",
      "line2": "POBOX nowhere",
      "postal_code": "54321",
      "state": "zx"
    },
    "name": "Jenny",
    "carrier": "Best Lucky Delivery",
    "phone": "3128675309",
    "tracking_number": "hideandseek"
  },
  "statement_descriptor": "super best codez",
  "statement_descriptor_suffix": "for u!",
  "status": "requires_payment_method",
  "transfer_data": null,
  "transfer_group": null
}
''';
