import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class RefundResource {
  final Client _client;
  RefundResource(this._client);

  Future<Refund> create(String chargeId) async {
    final map = await _client.post(['refunds'], data: {'charge': chargeId});
    return Refund.fromJson(map);
  }
}
