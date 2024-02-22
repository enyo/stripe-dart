import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SubscriptionResource extends Resource<Subscription> {
  SubscriptionResource(Client client) : super(client);

  Future<Subscription> retrieve(String id) async {
    final response = await get('subscription/$id');
    return Subscription.fromJson(response);
  }

  Future<DataList<Subscription>> list(
      [ListSubscriptionsRequest? request]) async {
    final map = await get('subscriptions', queryParameters: request?.toJson());
    return DataList<Subscription>.fromJson(
        map, (value) => Subscription.fromJson(value as Map<String, dynamic>));
  }

  /// https://docs.stripe.com/api/subscriptions/cancel
  Future<Subscription> cancel(
    String id, {
    bool? invoiceNow,
    bool? prorate,
  }) async {
    final response = await delete(
      'subscription/$id',
      data: {
        if (invoiceNow != null) 'invoice_now': invoiceNow,
        if (prorate != null) 'prorate': invoiceNow,
      },
    );

    return Subscription.fromJson(response);
  }
}
