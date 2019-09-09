import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class PaymentIntentResource {
  final Client _client;
  PaymentIntentResource(this._client);

  Future<PaymentIntent> retrieve(String paymentIntentId) async {
    final map = await _client.get(['payment_intents', paymentIntentId]);
    return PaymentIntent.fromJson(map);
  }
}
