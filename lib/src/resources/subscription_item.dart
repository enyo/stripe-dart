import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SubscriptionItemResource extends Resource<SubscriptionItem> {
  SubscriptionItemResource(Client client) : super(client);

  Future<SubscriptionItem> retrieve(String id) async {
    final response = await get('subscription_items/$id');
    return SubscriptionItem.fromJson(response);
  }

  Future<DataList<SubscriptionItem>> list([
    ListSubscriptionItemsRequest? request,
  ]) async {
    final map = await get(
      'subscription_items',
      queryParameters: request?.toJson(),
    );
    return DataList<SubscriptionItem>.fromJson(
      map,
      (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<SubscriptionItem> update(
    String id, {
    required SubscriptionItemUpdate update,
  }) async {
    final response = await post(
      'subscription_items/$id',
      data: update.toJson(),
    );

    return SubscriptionItem.fromJson(response);
  }

  Future<SubscriptionItem> deleteItem(
    String id, {
    bool? clearUsage,
  }) async {
    final response = await delete('subscription_items/$id');

    return SubscriptionItem.fromJson(response);
  }
}
