import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe/messages.dart';

import '../client.dart';

final log = Logger('Stripe PaymentIntentResource');

class PaymentIntentResource {
  final Client _client;
  PaymentIntentResource(this._client);

  Future<PaymentIntent> retrieve(String paymentIntentId) async {
    final map = await _client.get('payment_intents/$paymentIntentId');
    return PaymentIntent.fromJson(map);
  }

  /// Returns true if successful.
  Future<bool> cancel(String paymentIntentId) async {
    try {
      await _client.post('payment_intents/$paymentIntentId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }
}
