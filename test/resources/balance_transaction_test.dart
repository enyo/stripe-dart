import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart' show FeeDetails;
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/balance_transaction.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late BalanceTransactionResource balanceTransactionResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    balanceTransactionResource = BalanceTransactionResource(client);
  });
  group('BalanceTransactionResource', () {
    test('properly decodes all values', () async {
      const id = 'pi_1EUqMaAA7oWz99nSFM4ANx6C';
      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(
              options.uri, Uri.parse('http://void/balance_transactions/$id'));
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(balanceTransactionResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await balanceTransactionResource.retrieve(id);

      expect(response.id, 'txn_1IZI1WCQQp28cFsCCDFNDOhL');
      expect(response.amount, 1200);
      expect(response.net, 1140);
      expect(response.fee, 60);
      expect(
          response.feeDetails,
          containsAll([
            isA<FeeDetails>()
                .having((x) => x.amount, 'amount', equals(60))
                .having((x) => x.application, 'application', equals(null))
                .having((x) => x.currency, 'currency', equals('eur'))
                .having((x) => x.description, 'description',
                    equals('Stripe processing fees'))
                .having((x) => x.type, 'type', equals('stripe_fee'))
          ]));
      expect(response.currency, 'eur');
    });
  });
}

const balanceTransactionResponse = r'''
{
  "id": "txn_1IZI1WCQQp28cFsCCDFNDOhL",
  "object": "balance_transaction",
  "amount": 1200,
  "available_on": 1617321600,
  "created": 1616774194,
  "currency": "eur",
  "description": "Subscription creation",
  "exchange_rate": null,
  "fee": 60,
  "fee_details": [
    {
      "amount": 60,
      "application": null,
      "currency": "eur",
      "description": "Stripe processing fees",
      "type": "stripe_fee"
    }
  ],
  "net": 1140,
  "reporting_category": "charge",
  "source": "ch_1IZI1WCQQp28cFsC3NZk4ERe",
  "status": "pending",
  "type": "charge"
}
''';
