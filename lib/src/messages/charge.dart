part of '../../messages.dart';

@JsonSerializable(disallowUnrecognizedKeys: false, explicitToJson: true)
class Charge {
  final String id;

  @JsonKey(name: 'balance_transaction')
  final String balanceTransaction;

  @JsonKey(name: 'payment_method_details')
  final PaymentMethodDetailsCard paymentMethodDetails;
  final bool livemode;

  Charge({
    required this.id,
    required this.balanceTransaction,
    required this.paymentMethodDetails,
    required this.livemode,
  });
  factory Charge.fromJson(Map<String, dynamic> json) {
    if (json['object'] != 'charge') {
      throw InvalidResourceException(
          'The resource object should be "source": $json ');
    }
    return _$ChargeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ChargeToJson(this);
}
