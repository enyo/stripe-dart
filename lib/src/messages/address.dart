part of '../../messages.dart';

/// https://stripe.com/docs/api/refunds/object
@JsonSerializable()
class Address extends Message {
  /// City, district, suburb, town, or village
  final String? city;

  /// Two-letter country code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
  final String? country;

  /// Address line 1 (e.g., street, PO Box, or company name)
  final String? line1;

  /// Address line 2 (e.g., apartment, suite, unit, or building)
  final String? line2;

  /// ZIP or postal code
  final String? postalCode;

  /// State, county, province, or region
  final String? state;

  Address({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.postalCode,
    this.state,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
