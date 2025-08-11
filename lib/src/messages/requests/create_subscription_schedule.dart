part of '../../../messages.dart';

@JsonSerializable()
class CreateSubscriptionScheduleRequest extends Message {

  const CreateSubscriptionScheduleRequest({
    this.fromSubscription,
  });

  factory CreateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestFromJson(json);
  final String? fromSubscription;

  @override
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestToJson(this);
}
