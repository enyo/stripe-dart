part of '../../messages.dart';

enum ChargeObject { charge }

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class Charge extends Message {

  Charge({
    required this.object,
    required this.id,
    required this.balanceTransaction,
    required this.paymentMethodDetails,
    required this.livemode,
  });

  factory Charge.fromJson(Map<String, dynamic> json) => _$ChargeFromJson(json);
  final ChargeObject object;
  final String id;
  final String balanceTransaction;
  final PaymentMethodDetails paymentMethodDetails;
  final bool livemode;

  @override
  Map<String, dynamic> toJson() => _$ChargeToJson(this);
}

@JsonSerializable()
class PaymentMethodDetails {

  PaymentMethodDetails({
    this.card,
  });

  factory PaymentMethodDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsFromJson(json);
  final PaymentMethodDetailsCard? card;

  Map<String, dynamic> toJson() => _$PaymentMethodDetailsToJson(this);
}

@JsonSerializable()
class PaymentMethodDetailsCard {

  PaymentMethodDetailsCard({
    required this.brand,
    required this.last4,
  });

  factory PaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsCardFromJson(json);
  final String brand;
  final String last4;

  Map<String, dynamic> toJson() => _$PaymentMethodDetailsCardToJson(this);
}
