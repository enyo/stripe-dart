import 'dart:async';

import 'package:stripe/messages.dart';

import 'package:stripe/src/resources/_resource.dart';

class ChargeResource extends Resource {
  ChargeResource(super.client);

  Future<Charge> retrieve(String chargeId) async {
    final map = await get('charges/$chargeId');
    return Charge.fromJson(map);
  }
}
