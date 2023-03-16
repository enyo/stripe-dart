part of '../../messages.dart';

// ignore: constant_identifier_names
enum _SubscriptionItemObject { subscription_item }

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class SubscriptionItem {
  final _SubscriptionItemObject object;

  /// Unique identifier for the object.
  final String id;

  /// The price the customer is subscribed to.
  final Price price;

  /// The subscription this subscription_item belongs to.
  final String subscription;

  SubscriptionItem({
    required this.object,
    required this.id,
    required this.price,
    required this.subscription,
  });

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionItemToJson(this);
}
