part of '../../../messages.dart';

/// https://docs.stripe.com/api/subscriptions/update
@JsonSerializable(includeIfNull: false)
class SubscriptionUpdate {

  SubscriptionUpdate({
    this.cancelAtPeriodEnd,
  });

  factory SubscriptionUpdate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);
  /// Boolean indicating whether this subscription should cancel at the end of the current period.
  final bool? cancelAtPeriodEnd;

  Map<String, dynamic> toJson() => _$SubscriptionUpdateToJson(this);
}
