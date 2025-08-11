part of '../../messages.dart';

enum PaymentMethodType {
  @JsonValue('acss_debit')
  acssDebit,
  affirm,
  @JsonValue('afterpay_clearpay')
  afterpayClearpay,
  alipay,
  @JsonValue('amazon_pay')
  amazonPay,
  @JsonValue('au_becs_debit')
  auBecsDebit,
  @JsonValue('bacs_debit')
  bacsDebit,
  bancontact,
  blik,
  boleto,
  card,
  cashapp,
  @JsonValue('customer_balance')
  customerBalance,
  eps,
  fpx,
  giropay,
  grabpay,
  ideal,
  klarna,
  konbini,
  link,
  oxxo,
  p24,
  paynow,
  pix,
  promptpay,
  @JsonValue('sepa_debit')
  sepaDebit,
  sofort,
  @JsonValue('us_bank_account')
  usBankAccount,
  @JsonValue('wechat_pay')
  wechatPay,
}

/// https://stripe.com/docs/api/checkout/sessions/object
@JsonSerializable()
class CheckoutSession {
  CheckoutSession({
    required this.object,
    required this.id,
    required this.paymentMethodTypes,
    this.clientReferenceId,
    this.customer,
    this.paymentIntent,
    this.status,
    this.url,
  });

  factory CheckoutSession.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionFromJson(json);

  /// Doesn't work with enum because there is a dot in it.
  final String object;
  final String id;
  final String? clientReferenceId;
  final String? customer;
  final String? paymentIntent;
  final List<PaymentMethodType> paymentMethodTypes;
  final String? status;
  final String? url;

  Map<String, dynamic> toJson() => _$CheckoutSessionToJson(this);
}
