part of '../../messages.dart';

enum _ChargeObject { charge }

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class Charge extends Message {
  final _ChargeObject object;
  final String id;
  final String balanceTransaction;
  final PaymentMethodDetails paymentMethodDetails;
  final bool livemode;

  Charge({
    required this.object,
    required this.id,
    required this.balanceTransaction,
    required this.paymentMethodDetails,
    required this.livemode,
  });

  factory Charge.fromJson(Map<String, dynamic> json) => _$ChargeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargeToJson(this);
}

@JsonSerializable()
class PaymentMethodDetails {
  final PaymentMethodDetailsCard? card;

  PaymentMethodDetails({
    this.card,
  });

  factory PaymentMethodDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodDetailsToJson(this);
}

@JsonSerializable()
class PaymentMethodDetailsCard {
  final String brand;
  final String last4;

  PaymentMethodDetailsCard({
    required this.brand,
    required this.last4,
  });

  factory PaymentMethodDetailsCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsCardFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodDetailsCardToJson(this);
}
