import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/subscription.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late SubscriptionResource subscriptionResource;
  setUp(() {
    // We set the baseUrl to something unreachable, because we define
    // interceptors in the tests.
    client = Client(apiKey: 'sk_foobar', baseUrl: 'http://void/');
    subscriptionResource = SubscriptionResource(client);
  });
  group('SubscriptionResource', () {
    test('properly decodes all values', () async {
      final request = ListSubscriptionsRequest(
        customer: 'foobar',
        status: SubscriptionStatus.all,
      );

      client.dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          expect(options.method, 'GET');
          expect(options.data, null);
          expect(options.queryParameters, request.toJson());
          handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(listSubscriptionsResponse),
              statusCode: HttpStatus.ok,
            ),
          );
        },
      ));

      final response = await subscriptionResource.list(request);

      expect(response.url, '/v1/subscriptions');
      expect(response.data.length, 1);

      final subscription = response.data.first;
      expect(subscription.id, 'su_1IZI1UCQQp28cFsCsr65YxPw');
      expect(subscription.items.data.length, 1);

      final subscriptionItem = subscription.items.data.first;
      expect(subscriptionItem.id, 'si_JBfME9WN5gChmk');
      expect(subscriptionItem.price.id, 'price_1IZHZoCQQp28cFsCQPo3u1sL');
      expect(subscriptionItem.price.active, isTrue);
    });
  });
}

const listSubscriptionsResponse = r'''
{
  "object": "list",
  "url": "/v1/subscriptions",
  "has_more": false,
  "data": [
    {
      "id": "su_1IZI1UCQQp28cFsCsr65YxPw",
      "object": "subscription",
      "application_fee_percent": null,
      "billing_cycle_anchor": 1616774192,
      "billing_thresholds": null,
      "cancel_at": 1619452592,
      "cancel_at_period_end": true,
      "canceled_at": 1616774263,
      "collection_method": "charge_automatically",
      "created": 1616774192,
      "current_period_end": 1619452592,
      "current_period_start": 1616774192,
      "customer": "cus_JBeXhlmdO7fAWj",
      "days_until_due": null,
      "default_payment_method": null,
      "default_source": null,
      "default_tax_rates": [],
      "discount": null,
      "ended_at": null,
      "items": {
        "object": "list",
        "data": [
          {
            "id": "si_JBfME9WN5gChmk",
            "object": "subscription_item",
            "billing_thresholds": null,
            "created": 1616774193,
            "metadata": {},
            "price": {
              "id": "price_1IZHZoCQQp28cFsCQPo3u1sL",
              "object": "price",
              "active": true,
              "billing_scheme": "per_unit",
              "created": 1616772476,
              "currency": "eur",
              "livemode": false,
              "lookup_key": null,
              "metadata": {},
              "nickname": null,
              "product": "prod_JBetQ1HJAN9IBg",
              "recurring": {
                "aggregate_usage": null,
                "interval": "month",
                "interval_count": 1,
                "usage_type": "licensed"
              },
              "tiers_mode": null,
              "transform_quantity": null,
              "type": "recurring",
              "unit_amount": 1200,
              "unit_amount_decimal": "1200"
            },
            "quantity": 1,
            "subscription": "sub_JBfMH351mq8006",
            "tax_rates": []
          }
        ],
        "has_more": false,
        "url": "/v1/subscription_items?subscription=sub_JBfMH351mq8006"
      },
      "latest_invoice": "in_1IZI1UCQQp28cFsCDxc00ifQ",
      "livemode": false,
      "metadata": {},
      "next_pending_invoice_item_invoice": null,
      "pause_collection": null,
      "pending_invoice_item_interval": null,
      "pending_setup_intent": null,
      "pending_update": null,
      "schedule": null,
      "start_date": 1616774192,
      "status": "active",
      "transfer_data": null,
      "trial_end": null,
      "trial_start": null
    }
  ]
}''';
