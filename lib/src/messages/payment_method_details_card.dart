part of '../../messages.dart';

@JsonSerializable(
    nullable: false, disallowUnrecognizedKeys: false, explicitToJson: true)
class PaymentMethodDetailsCard {
  final String brand;
  final String last4;
  PaymentMethodDetailsCard({
    @required this.brand,
    @required this.last4,
  });

  factory PaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsCardFromJson(json['card'] as Map<String, dynamic>);
  Map<String, dynamic> toJson() => _$PaymentMethodDetailsCardToJson(this);
}
