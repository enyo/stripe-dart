part of '../../../messages.dart';

@JsonSerializable()
class CreateSubscriptionScheduleRequest extends Message {
  final String? fromSubscription;

  const CreateSubscriptionScheduleRequest({
    this.fromSubscription,
  });

  factory CreateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestToJson(this);
}
