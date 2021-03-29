part of '../../messages.dart';

enum PaymentMethodType {
  alipay,
  card,
  ideal,
  fpx,
  bacs_debit,
  bancontact,
  giropay,
  p24,
  eps,
  sofort,
  sepaDebit,
  grabpay,
  afterpay_clearpay,
}

/// https://stripe.com/docs/api/checkout/sessions/object
@JsonSerializable()
class Session {
  /// Doesn't work with enum because there is a dot in it.
  final String object;
  final String id;
  final String? customer;
  final String paymentIntent;
  final List<PaymentMethodType> paymentMethodTypes;

  Session({
    required this.object,
    required this.id,
    this.customer,
    required this.paymentIntent,
    required this.paymentMethodTypes,
  });

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
