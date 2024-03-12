import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class EphemeralKeyResource extends Resource<EphemeralKey> {
  EphemeralKeyResource(Client client) : super(client);

  Future<EphemeralKey> create(String customerId) async {
    final map = await post('ephemeral_keys', data: {'customer': customerId});
    return EphemeralKey.fromJson(map);
  }
}
