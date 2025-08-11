part of '../../../messages.dart';

@JsonSerializable()
class CreateSubscriptionScheduleRequest {
  const CreateSubscriptionScheduleRequest({
    this.fromSubscription,
  });

  factory CreateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestFromJson(json);
  final String? fromSubscription;

  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestToJson(this);
}
