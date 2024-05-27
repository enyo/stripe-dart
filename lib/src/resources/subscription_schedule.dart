import '../../messages.dart';
import '../client.dart';
import '_resource.dart';

class SubscriptionScheduleResource extends Resource {
  SubscriptionScheduleResource(Client client) : super(client);

  /// https://stripe.com/docs/api/subscription_schedules/retrieve
  Future<SubscriptionSchedule> retrieve(String id) async {
    final response = await get('subscription_schedules/$id');

    return SubscriptionSchedule.fromJson(response);
  }

  /// https://stripe.com/docs/api/subscription_schedules/list
  Future<DataList<SubscriptionSchedule>> list([
    ListSubscriptionSchedulesRequest? request,
  ]) async {
    final map = await get(
      'subscription_schedules',
      queryParameters: request?.toJson(),
    );

    return DataList<SubscriptionSchedule>.fromJson(
      map,
      (value) => SubscriptionSchedule.fromJson(value as Map<String, dynamic>),
    );
  }

  /// https://stripe.com/docs/api/subscription_schedules/create
  Future<SubscriptionSchedule> create(
    CreateSubscriptionScheduleRequest request,
  ) async {
    final response = await post(
      'subscription_schedules',
      data: request.toJson(),
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
