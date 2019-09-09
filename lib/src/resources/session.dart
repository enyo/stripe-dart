import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class SessionResource {
  final Client _client;
  SessionResource(this._client);

  /// Creates a Stripe Checkout Session.
  /// Returns the Session ID.
  Future<Session> create(
    String successUrl,
    String cancelUrl,
    String customerEmail,
    String name,
    String description,
    String imageUrl,
    int amount,
    String currencyCode,
  ) async {
    final data = {
      'success_url': successUrl,
      'cancel_url': cancelUrl,
      'payment_method_types[]': 'card',
      'customer_email': customerEmail,
      'line_items[][name]': name,
      'line_items[][description]': description,
      'line_items[][images][]': imageUrl,
      'line_items[][amount]': '$amount',
      'line_items[][currency]': currencyCode,
      'line_items[][quantity]': '1',
    };
    final response = await _client.post(['checkout', 'sessions'], data: data);
    return Session.fromJson(response);
  }
}
