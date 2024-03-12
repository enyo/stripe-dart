part of '../../messages.dart';

/// https://stripe.com/docs/api/payment_methods/object
@JsonSerializable()
class PaymentMethod extends Message {
  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  final Map<String, dynamic>? metadata;

  /// Unique identifier for the object.
  final String id;

  /// The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
  final String? customer;

  final PaymentMethodDetailsCard? card;

  PaymentMethod({
    this.metadata,
    required this.id,
    this.customer,
    this.card,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
