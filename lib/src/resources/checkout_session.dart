import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class CheckoutSessionResource {
  final Client _client;
  CheckoutSessionResource(this._client);

  /// Creates a Stripe Checkout Session.
  Future<CheckoutSession> create(CreateCheckoutSessionRequest request) async {
    final response =
        await _client.post('checkout/sessions', data: request.toJson());
    return CheckoutSession.fromJson(response);
  }

  Future<CheckoutSession> retrieve(String id) async {
    final response = await _client.get('checkout/sessions/$id');
    return CheckoutSession.fromJson(response);
  }
}
