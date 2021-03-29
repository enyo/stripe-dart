import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class ChargeResource {
  final Client _client;
  ChargeResource(this._client);

  Future<Charge> retrieve(String chargeId) async {
    final map = await _client.get('charges/$chargeId');
    return Charge.fromJson(map);
  }
}
