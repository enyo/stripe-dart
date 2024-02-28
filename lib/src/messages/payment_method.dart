part of '../../messages.dart';

/// [PaymentMethod] objects represent your customer’s payment instruments.
/// You can use them with PaymentIntents to collect payments or save them to
/// Customer objects to store instrument details for future payments.
///
/// https://docs.stripe.com/api/payment_methods/object
@JsonSerializable()
class PaymentMethod extends Message {
  /// Unique identifier for the object.
  final int id;

  /// Has the value true if the object exists in live mode or the value false
  /// if the object exists in test mode.
  final bool livemode;

  /// The type of the [PaymentMethod]. An additional hash is included on the
  /// PaymentMethod with a name matching this value. It contains additional
  /// information specific to the [PaymentMethod] type.
  final String type;

  /// Billing information associated with the [PaymentMethod] that may be used or
  /// required by particular types of payment methods.
  final BillingDetails billingDetails;

  /// The ID of the Customer to which this [PaymentMethod] is saved. This will
  /// not be set when the [PaymentMethod] has not been saved to a Customer.
  final String? customer;

  /// If this is a card [PaymentMethod], this hash contains the user’s card
  /// details.
  final PaymentMethodCard? card;

  PaymentMethod({
    required this.id,
    required this.livemode,
    required this.type,
    required this.billingDetails,
    this.customer,
    this.card,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}

/// https://docs.stripe.com/api/payment_methods/object#payment_method_object-card
@JsonSerializable()
class PaymentMethodCard {
  /// Card brand.
  final String brand;

  /// The last four digits of the card.
  final String last4;

  /// Two-digit number representing the card’s expiration month.
  final int expMonth;

  /// Four-digit number representing the card’s expiration year.
  final int expYear;

  /// The brand to use when displaying the card, this accounts for customer’s
  /// brand choice on dual-branded cards.
  final String? displayBrand;

  PaymentMethodCard({
    required this.brand,
    required this.last4,
    required this.expMonth,
    required this.expYear,
    this.displayBrand,
  });

  factory PaymentMethodCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodCardFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodCardToJson(this);
}

/// https://docs.stripe.com/api/payment_methods/object#payment_method_object-card-wallet
@JsonSerializable()
class Wallet {
  /// The type of the card wallet. An additional hash is included on the Wallet
  /// subhash with a name matching this value. It contains additional
  /// information specific to the card wallet type.
  final String type;

  /// The last four digits of the device account number. For tokenized numbers
  /// only.
  final String? dynamicLast4;

  Wallet({
    required this.type,
    this.dynamicLast4,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
