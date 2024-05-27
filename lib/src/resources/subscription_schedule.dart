import '../../messages.dart';
import '_resource.dart';

class SubscriptionScheduleResource extends Resource {
  SubscriptionScheduleResource(super.client);

  /// https://stripe.com/docs/api/subscription_schedules/retrieve
  Future<SubscriptionSchedule> retrieve(String id) async {
    final response = await get('subscription_schedules/$id');

    return SubscriptionSchedule.fromJson(response);
  }

  /// https://stripe.com/docs/api/subscription_schedules/list
  Future<DataList<SubscriptionSchedule>> list() async {
    final map = await get('subscription_schedules');

    return DataList<SubscriptionSchedule>.fromJson(
      map,
      (value) => SubscriptionSchedule.fromJson(value as Map<String, dynamic>),
    );
  }

  /// https://stripe.com/docs/api/subscription_schedules/create
  Future<SubscriptionSchedule> create(String fromSubscription) async {
    final response = await post(
      'subscription_schedules',
      data: {'from_subscription': fromSubscription},
    );

    return SubscriptionSchedule.fromJson(response);
  }

  /// https://stripe.com/docs/api/subscription_schedules/update
  Future<SubscriptionSchedule> update(
    String id,
    UpdateSubscriptionScheduleRequest request,
  ) async {
    final response = await post(
      'subscription_schedules/$id',
      data: request.toJson(),
    );

    return SubscriptionSchedule.fromJson(response);
  }
}
