import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class PortalSessionResource {
  final Client _client;
  PortalSessionResource(this._client);

  /// Creates a Stripe Checkout Session.
  Future<PortalSession> create(CreatePortalSessionRequest request) async {
    final response =
        await _client.post('billing_portal/sessions', data: request.toJson());
    return PortalSession.fromJson(response);
  }
}
