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

  Future<DataList<Subscription>> search({
    /// https://docs.stripe.com/search#query-fields-for-subscriptions
    required String queryString,
  }) async {
    final Map<String, dynamic> map = await get(
      'subscriptions/search',
      queryParameters: {'query': queryString},
    );

    final subscriptions = DataList<Subscription>.fromJson(
      map,
      (subscriptionMap) =>
          Subscription.fromJson(subscriptionMap as Map<String, dynamic>),
    );

    return subscriptions;
  }
}
