part of '../../messages.dart';

enum _SubscriptionScheduleObject {
  @JsonValue('subscription_schedule')
  subscriptionSchedule,
}

@JsonSerializable()
class SubscriptionSchedule extends Message {
  final _SubscriptionScheduleObject object;

  final String id;

  final String? customer;

  final Map<String, dynamic>? metadata;

  final List<SubscriptionSchedulePhase> phases;

  const SubscriptionSchedule({
    required this.object,
    required this.id,
    this.customer,
    this.metadata,
    required this.phases,
  });

  factory SubscriptionSchedule.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionScheduleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionScheduleToJson(this);
}

@JsonSerializable()
class SubscriptionSchedulePhase extends Message {
  final String id;

  @TimestampConverter()
  final DateTime? startDate;

  @TimestampConverter()
  final DateTime? endDate;

  final List<SubscriptionSchedulePhaseItem> items;

  const SubscriptionSchedulePhase({
    required this.id,
    this.startDate,
    this.endDate,
    required this.items,
  });

  factory SubscriptionSchedulePhase.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseToJson(this);
}

@JsonSerializable()
class SubscriptionSchedulePhaseItem extends Message {
  final String price;

  final int quantity;

  const SubscriptionSchedulePhaseItem({
    required this.price,
    required this.quantity,
  });

  factory SubscriptionSchedulePhaseItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseItemToJson(this);
}
