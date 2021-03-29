import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class SessionResource {
  final Client _client;
  SessionResource(this._client);

  /// Creates a Stripe Checkout Session.
  Future<Session> create(CreateSessionRequest request) async {
    final response =
        await _client.post('checkout/sessions', data: request.toJson());
    return Session.fromJson(response);
  }

  Future<Session> retrieve(String id) async {
    final response = await _client.get('checkout/sessions/$id');
    return Session.fromJson(response);
  }
}
