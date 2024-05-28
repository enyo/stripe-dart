part of '../../messages.dart';

enum _SubscriptionScheduleObject {
  @JsonValue('subscription_schedule')
  subscriptionSchedule,
}

enum SubscriptionScheduleStatus {
  @JsonValue('not_started')
  notStarted,
  @JsonValue('active')
  active,
  @JsonValue('completed')
  completed,
  @JsonValue('released')
  released,
  @JsonValue('canceled')
  canceled,
}

@JsonSerializable()
class SubscriptionSchedule extends Message {
  final _SubscriptionScheduleObject object;

  final String id;

  final String? customer;

  final Map<String, dynamic>? metadata;

  final List<SubscriptionSchedulePhase> phases;

  final SubscriptionScheduleStatus status;

  final String? subscription;

  const SubscriptionSchedule({
    required this.object,
    required this.id,
    this.customer,
    this.metadata,
    required this.phases,
    required this.status,
    this.subscription,
  });

  factory SubscriptionSchedule.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionScheduleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionScheduleToJson(this);
}

@JsonSerializable()
class SubscriptionSchedulePhase extends Message {
  @TimestampConverter()
  final DateTime? startDate;

  @TimestampConverter()
  final DateTime? endDate;

  final List<SubscriptionSchedulePhaseItem> items;

  const SubscriptionSchedulePhase({
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
