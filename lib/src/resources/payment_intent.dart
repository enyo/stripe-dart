import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe/messages.dart';

import '_resource.dart';

final log = Logger('Stripe PaymentIntentResource');

class PaymentIntentResource extends Resource<PaymentIntent> {
  PaymentIntentResource(super.client);

  Future<PaymentIntent> create(CreatePaymentIntentRequest request) async {
    final response = await post('payment_intents', data: request.toJson());
    return PaymentIntent.fromJson(response);
  }

  Future<PaymentIntent> retrieve(String paymentIntentId) async {
    final map = await get('payment_intents/$paymentIntentId');
    return PaymentIntent.fromJson(map);
  }

  /// Returns true if successful.
  Future<bool> cancel(String paymentIntentId) async {
    try {
      await post('payment_intents/$paymentIntentId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }

  Future<DataList<PaymentIntent>> search({
    /// https://docs.stripe.com/search#query-fields-for-payment-intents
    required String queryString,
  }) async {
    final Map<String, dynamic> map = await get(
      'payment_intents/search',
      queryParameters: {'query': queryString},
    );

    final intents = DataList<PaymentIntent>.fromJson(
      map,
      (customerMap) =>
          PaymentIntent.fromJson(customerMap as Map<String, dynamic>),
    );

    return intents;
  }
}
