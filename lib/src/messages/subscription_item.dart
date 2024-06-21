part of '../../messages.dart';

// ignore: constant_identifier_names
enum _SubscriptionItemObject { subscription_item }

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class SubscriptionItem extends Message {
  final _SubscriptionItemObject object;

  /// Unique identifier for the object.
  final String id;

  /// The price the customer is subscribed to.
  final Price price;

  /// The subscription this subscription_item belongs to.
  final String subscription;

  /// The quantity of the plan to which the customer should be subscribed.
  final int quantity;

  SubscriptionItem({
    required this.object,
    required this.id,
    required this.price,
    required this.subscription,
    required this.quantity,
  });

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionItemToJson(this);
}
