import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class ChargeResource extends Resource<Charge> {
  ChargeResource(Client client) : super(client);

  Future<Charge> retrieve(String chargeId) async {
    final map = await get('charges/$chargeId');
    return Charge.fromJson(map);
  }
}
