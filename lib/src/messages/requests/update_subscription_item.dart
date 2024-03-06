part of '../../../messages.dart';

/// https://docs.stripe.com/api/subscription_items/update
@JsonSerializable(includeIfNull: false)
class SubscriptionItemUpdate {
  /// Set of key-value pairs that you can attach to an object.
  final Map<String, String>? metadata;

  final PaymentBehavior? paymentBehavior;

  /// The ID of the price object. When changing a subscription item’s price,
  /// quantity is set to 1 unless a quantity parameter is provided.
  final String? price;

  /// Determines how to handle prorations when the billing cycle changes
  /// (e.g., when switching plans, resetting billing_cycle_anchor=now,
  /// or starting a trial), or if an item’s quantity changes.
  /// The default value is create_prorations.
  final ProrationBehavior? prorationBehavior;

  /// The quantity you’d like to apply to the subscription item you’re creating.
  final int? quantity;

  /// Define thresholds at which an invoice will be sent,
  /// and the subscription advanced to a new billing period.
  /// When updating, pass an empty string to remove previously-defined thresholds.
  final Map<String, Object?>? billingThresholds;

  /// Indicates if a customer is on or off-session while an invoice payment is attempted.
  final bool? offSession;

  /// Data used to generate a new Price object inline.
  final Map<String, Object?>? priceData;

  /// If set, the proration will be calculated as though the subscription was updated at the given time.
  /// This can be used to apply the same proration that was previewed with the upcoming invoice endpoint.
  final DateTime? prorationDate;

  final List<String>? taxRates;

  SubscriptionItemUpdate({
    this.paymentBehavior,
    this.metadata,
    this.price,
    this.prorationBehavior,
    this.quantity,
    this.billingThresholds,
    this.offSession,
    this.priceData,
    this.prorationDate,
    this.taxRates,
  });

  factory SubscriptionItemUpdate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionItemUpdateToJson(this);
}
