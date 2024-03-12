import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

final log = Logger('Stripe SetupIntentResource');

class SetupIntentResource extends Resource<SetupIntent> {
  SetupIntentResource(Client client) : super(client);

  Future<SetupIntent> create(CreateSetupIntentRequest request) async {
    final response = await post('setup_intents', data: request.toJson());
    return SetupIntent.fromJson(response);
  }

  Future<SetupIntent> retrieve(String setupIntentId) async {
    final map = await get('setup_intents/$setupIntentId');
    return SetupIntent.fromJson(map);
  }

  /// Returns true if successful.
  Future<bool> cancel(String setupIntentId) async {
    try {
      await post('setup_intents/$setupIntentId/cancel');
    } catch (e) {
      log.warning(e);

      return false;
    }
    return true;
  }
}
