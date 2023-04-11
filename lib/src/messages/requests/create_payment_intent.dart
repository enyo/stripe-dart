part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/create
@JsonSerializable()
class CreatePaymentIntentRequest {
  /// Amount intended to be collected by this PaymentIntent. A positive integer
  /// representing how much to charge in the smallest currency unit
  /// (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
  /// The minimum amount is $0.50 US or equivalent in charge currency. The amount
  /// value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  final int amount;

  final AutomaticPaymentMethods? automaticPaymentMethods;

  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String currency;

  /// Set to true to attempt to confirm this PaymentIntent immediately. This parameter
  /// defaults to false. When creating and confirming a PaymentIntent at the same time,
  /// parameters available in the confirm API may also be provided.
  final bool? confirm;

  /// ID of the Customer this PaymentIntent belongs to, if one exists.
  /// Payment methods attached to other Customers cannot be used with this PaymentIntent.
  /// If present in combination with [setupFutureUsage], this [PaymentIntent]’s payment
  /// method will be attached to the [Customer] after the [PaymentIntent] has been confirmed
  /// and any required actions from the user are complete.
  final String? customer;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format. Individual keys can be unset by posting an empty value to them.
  /// All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// Set to true to indicate that the customer is not in your checkout flow during
  /// this payment attempt, and therefore is unable to authenticate.
  /// This parameter is intended for scenarios where you collect card details and
  /// charge them later. This parameter can only be used with [confirm]=true.
  final bool? offSession;

  /// ID of the payment method (a PaymentMethod, Card, or compatible Source object) to
  /// attach to this PaymentIntent. If this parameter is omitted with [confirm]=true,
  /// [Customer.defaultSource] will be attached as this [PaymentIntent]’s payment
  /// instrument to improve the migration experience for users of the Charges API.
  /// We recommend that you explicitly provide the payment_method going forward.
  final String? paymentMethod;

  /// The list of payment method types that this [PaymentIntent] is allowed to use.
  /// If this is not provided, defaults to ["card"].
  /// Valid payment method types: [PaymentMethodType]
  final Set<PaymentMethodType>? paymentMethodTypes;

  /// Email address that the receipt for the resulting payment will be sent to.
  /// If [receiptEmail] is specified for a payment in live mode, a receipt will
  /// be sent regardless of your account's email settings.
  final String? receiptEmail;

  /// Indicates that you intend to make future payments with this [PaymentIntent]’s
  /// payment method. Providing this parameter will attach the payment method
  /// to the [PaymentIntent]’s [Customer], if present, after the [PaymentIntent]
  /// is confirmed and any required actions from the user are complete. If no
  /// [Customer] was provided, the payment method can still be attached to a
  /// [Customer] after the transaction completes.
  /// When processing card payments, Stripe also uses [setupFutureUsage] to
  /// dynamically optimize your payment flow and comply with regional legislation
  /// and network rules, such as SCA.
  /// Possible enum values: [SetupFutureUsage]
  final SetupFutureUsage? setupFutureUsage;

  /// Shipping information for this PaymentIntent
  /// See [ShippingSpecification]
  final ShippingSpecification? shipping;

  /// For non-card charges, you can use this value as the complete description
  /// that appears on your customers’ statements. Must contain at least one
  /// letter, maximum 22 characters.
  final String? statementDescriptor;

  /// Provides information about a card payment that customers see on their
  /// statements. Concatenated with the prefix (shortened descriptor) or
  /// statement descriptor that’s set on the account to form the complete
  /// statement descriptor. Maximum 22 characters for the concatenated descriptor.
  final String? statementDescriptorSuffix;

  CreatePaymentIntentRequest({
    required this.amount,
    required this.currency,
    this.automaticPaymentMethods,
    this.confirm,
    this.customer,
    this.description,
    this.metadata,
    this.offSession,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
  });

  factory CreatePaymentIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePaymentIntentRequestToJson(this);
}
