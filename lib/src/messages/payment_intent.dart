part of '../../messages.dart';

// ignore: constant_identifier_names
enum _PaymentIntentObject { payment_intent }

/// https://stripe.com/docs/api/payment_intents/object
@JsonSerializable()
class PaymentIntent {
  final _PaymentIntentObject object;

  final String id;
  final int amount;
  final String clientSecret;
  final String currency;
  final String status;
  final DataList<Charge> charges;
  final String? customer;
  final String? description;
  final Map<String, String>? metadata;
  final String? paymentMethod;
  final Set<PaymentMethodType>? paymentMethodTypes;
  final String? receiptEmail;
  final SetupFutureUsage? setupFutureUsage;
  final ShippingSpecification? shipping;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;

  PaymentIntent({
    required this.object,
    required this.id,
    required this.amount,
    required this.clientSecret,
    required this.currency,
    required this.status,
    required this.charges,
    this.customer,
    this.description,
    this.metadata,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
  });
  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}
