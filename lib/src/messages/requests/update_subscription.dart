part of '../../../messages.dart';

/// https://docs.stripe.com/api/subscriptions/update
@JsonSerializable(includeIfNull: false)
class SubscriptionUpdate {
  /// Boolean indicating whether this subscription should cancel at the end of the current period.
  final bool? cancelAtPeriodEnd;

  SubscriptionUpdate({
    this.cancelAtPeriodEnd,
  });

  factory SubscriptionUpdate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionUpdateToJson(this);
}
