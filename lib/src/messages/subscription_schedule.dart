part of '../../messages.dart';

enum SubscriptionScheduleObject {
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
class SubscriptionSchedule {
  const SubscriptionSchedule({
    required this.object,
    required this.id,
    required this.phases,
    required this.status,
    this.customer,
    this.metadata,
    this.subscription,
  });

  factory SubscriptionSchedule.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionScheduleFromJson(json);
  final SubscriptionScheduleObject object;

  final String id;

  final String? customer;

  final Map<String, dynamic>? metadata;

  final List<SubscriptionSchedulePhase> phases;

  final SubscriptionScheduleStatus status;

  final String? subscription;

  Map<String, dynamic> toJson() => _$SubscriptionScheduleToJson(this);
}

@JsonSerializable()
class SubscriptionSchedulePhase {
  const SubscriptionSchedulePhase({
    required this.items,
    this.startDate,
    this.endDate,
  });

  factory SubscriptionSchedulePhase.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseFromJson(json);
  @TimestampConverter()
  final DateTime? startDate;

  @TimestampConverter()
  final DateTime? endDate;

  final List<SubscriptionSchedulePhaseItem> items;

  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseToJson(this);
}

@JsonSerializable()
class SubscriptionSchedulePhaseItem {
  const SubscriptionSchedulePhaseItem({
    required this.price,
    required this.quantity,
  });

  factory SubscriptionSchedulePhaseItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseItemFromJson(json);
  final String price;

  final int quantity;

  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseItemToJson(this);
}
