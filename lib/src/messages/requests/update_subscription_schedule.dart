part of '../../../messages.dart';

enum SubscriptionScheduleEndBehavior {
  @JsonValue('release')
  release,
  @JsonValue('cancel')
  cancel,
}

@JsonSerializable()
class UpdateSubscriptionScheduleRequest extends Message {
  final List<UpdateSubscriptionSchedulePhase> phases;

  final SubscriptionScheduleEndBehavior? endBehavior;

  const UpdateSubscriptionScheduleRequest({
    required this.phases,
    this.endBehavior,
  });

  factory UpdateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSubscriptionScheduleRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionScheduleRequestToJson(this);
}

@JsonSerializable()
class UpdateSubscriptionSchedulePhase extends Message {
  @TimestampConverter()
  final DateTime? startDate;

  @TimestampConverter()
  final DateTime? endDate;

  final List<UpdateSubscriptionSchedulePhaseItem> items;

  const UpdateSubscriptionSchedulePhase({
    this.startDate,
    this.endDate,
    required this.items,
  });

  factory UpdateSubscriptionSchedulePhase.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionSchedulePhaseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionSchedulePhaseToJson(this);
}

@JsonSerializable()
class UpdateSubscriptionSchedulePhaseItem extends Message {
  final String price;

  final int quantity;

  const UpdateSubscriptionSchedulePhaseItem({
    required this.price,
    required this.quantity,
  });

  factory UpdateSubscriptionSchedulePhaseItem.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSubscriptionSchedulePhaseItemFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateSubscriptionSchedulePhaseItemToJson(this);
}
