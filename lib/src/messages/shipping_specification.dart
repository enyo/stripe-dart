part of '../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/create#create_payment_intent-shipping
@JsonSerializable()
class ShippingSpecification {
  /// Shipping [Address]
  final Address address;

  /// Recipient name
  final String name;

  /// The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc
  final String? carrier;

  /// Recipient phone (including extension)
  final String? phone;

  /// The tracking number for a physical product, obtained from the delivery service.
  /// If multiple tracking numbers were generated for this purchase, please separate
  /// them with commas
  final String? trackingNumber;

  ShippingSpecification({
    required this.address,
    required this.name,
    this.carrier,
    this.phone,
    this.trackingNumber,
  });

  factory ShippingSpecification.fromJson(Map<String, dynamic> json) =>
      _$ShippingSpecificationFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingSpecificationToJson(this);
}
