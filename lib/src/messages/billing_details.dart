part of '../../messages.dart';

/// https://docs.stripe.com/api/payment_methods/object#payment_method_object-billing_details
@JsonSerializable()
class BillingDetails {
  BillingDetails({
    this.address,
    this.email,
    this.name,
    this.phone,
  });

  factory BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailsFromJson(json);

  /// Billing address.
  final Address? address;

  /// Email address.
  final String? email;

  /// Full name.
  final String? name;

  /// Billing phone number (including extension).
  final String? phone;

  Map<String, dynamic> toJson() => _$BillingDetailsToJson(this);
}
