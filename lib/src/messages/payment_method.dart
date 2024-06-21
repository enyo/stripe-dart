part of '../../messages.dart';

/// [PaymentMethod] objects represent your customer’s payment instruments.
/// You can use them with PaymentIntents to collect payments or save them to
/// Customer objects to store instrument details for future payments.
///
/// https://docs.stripe.com/api/payment_methods/object
@JsonSerializable()
class PaymentMethod extends Message {
  /// Unique identifier for the object.
  final String id;

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

  /// If this is an us_bank_account [PaymentMethod], this hash contains details
  /// about the US bank account payment method.
  final PaymentMethodUsBankAccount? usBankAccount;

  PaymentMethod({
    required this.id,
    required this.livemode,
    required this.type,
    required this.billingDetails,
    this.customer,
    this.card,
    this.usBankAccount,
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

  /// If this Card is part of a card wallet, this contains the details of the
  /// card wallet.
  final Wallet? wallet;

  /// The brand to use when displaying the card, this accounts for customer’s
  /// brand choice on dual-branded cards.
  final String? displayBrand;

  /// Uniquely identifies this particular card number. You can use this
  /// attribute to check whether two customers who’ve signed up with you are
  /// using the same card number, for example. For payment methods that tokenize
  /// card information (Apple Pay, Google Pay), the tokenized number might be
  /// provided instead of the underlying card number.
  final String? fingerprint;

  PaymentMethodCard({
    required this.brand,
    required this.last4,
    required this.expMonth,
    required this.expYear,
    this.wallet,
    this.displayBrand,
    this.fingerprint,
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

/// https://docs.stripe.com/api/payment_methods/object#payment_method_object-us_bank_account
@JsonSerializable()
class PaymentMethodUsBankAccount {
  /// The name of the bank.
  final String? bankName;

  /// Uniquely identifies this particular bank account. You can use this
  /// attribute to check whether two bank accounts are the same.
  final String? fingerprint;

  /// Last four digits of the bank account number.
  final String? last4;

  /// Routing number of the bank account.
  final String? routingNumber;

  PaymentMethodUsBankAccount({
    this.bankName,
    this.fingerprint,
    this.last4,
    this.routingNumber,
  });

  factory PaymentMethodUsBankAccount.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodUsBankAccountFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodUsBankAccountToJson(this);
}
