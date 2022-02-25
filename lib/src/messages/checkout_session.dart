part of '../../messages.dart';

enum PaymentMethodType {
  alipay,
  card,
  ideal,
  fpx,
  // ignore: constant_identifier_names
  bacs_debit,
  bancontact,
  giropay,
  p24,
  eps,
  sofort,
  sepaDebit,
  grabpay,
  // ignore: constant_identifier_names
  afterpay_clearpay,
}

/// https://stripe.com/docs/api/checkout/sessions/object
@JsonSerializable()
class CheckoutSession {
  /// Doesn't work with enum because there is a dot in it.
  final String object;
  final String id;
  final String? clientReferenceId;
  final String? customer;
  final String? paymentIntent;
  final List<PaymentMethodType> paymentMethodTypes;

  CheckoutSession({
    required this.object,
    required this.id,
    required this.paymentMethodTypes,
    this.clientReferenceId,
    this.customer,
    this.paymentIntent,
  });

  factory CheckoutSession.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionFromJson(json);
  Map<String, dynamic> toJson() => _$CheckoutSessionToJson(this);
}
