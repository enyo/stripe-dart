part of '../../../messages.dart';

enum SubscriptionScheduleEndBehavior {
  @JsonValue('release')
  release,
  @JsonValue('cancel')
  cancel,
}

@JsonSerializable()
class UpdateSubscriptionScheduleRequest {
  const UpdateSubscriptionScheduleRequest({
    required this.phases,
    this.endBehavior,
  });

  factory UpdateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSubscriptionScheduleRequestFromJson(json);
  final List<UpdateSubscriptionSchedulePhase> phases;

  final SubscriptionScheduleEndBehavior? endBehavior;

  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionScheduleRequestToJson(this);
}

@JsonSerializable()
class UpdateSubscriptionSchedulePhase {
  const UpdateSubscriptionSchedulePhase({
    required this.items,
    this.startDate,
    this.endDate,
  });

  factory UpdateSubscriptionSchedulePhase.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionSchedulePhaseFromJson(json);
  @TimestampConverter()
  final DateTime? startDate;

  @TimestampConverter()
  final DateTime? endDate;

  final List<UpdateSubscriptionSchedulePhaseItem> items;

  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionSchedulePhaseToJson(this);
}

@JsonSerializable()
class UpdateSubscriptionSchedulePhaseItem {
  const UpdateSubscriptionSchedulePhaseItem({
    required this.price,
    required this.quantity,
  });

  factory UpdateSubscriptionSchedulePhaseItem.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSubscriptionSchedulePhaseItemFromJson(json);
  final String price;

  final int quantity;

  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionSchedulePhaseItemToJson(this);
}
