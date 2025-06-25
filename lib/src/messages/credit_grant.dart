part of '../../messages.dart';

enum _CreditGrantObject {
  @JsonValue('billing.credit_grant')
  billingCreditGrant,
}

/// https://docs.stripe.com/api/billing/credit-grant/object
@JsonSerializable()
class CreditGrant extends Message {
  final _CreditGrantObject object;

  /// Unique identifier for the object.
  final String id;

  /// Amount of this credit grant.
  final CreditGrantAmount amount;

  /// Configuration specifying what this credit grant applies to. We currently
  /// only support metered prices that have a Billing Meter attached to them.
  final CreditGrantApplicabilityConfig applicabilityConfig;

  /// he category of this credit grant. This is for tracking purposes and isn’t
  /// displayed to the customer.
  final CreditGrantCategory category;

  /// Time at which the object was created. Measured in seconds since the Unix
  /// epoch.
  final int created;

  /// ID of the customer receiving the billing credits.
  final String customer;

  /// Has the value true if the object exists in live mode or the value false
  /// if the object exists in test mode.
  final bool livemode;

  /// Time at which the object was last updated. Measured in seconds since the
  /// Unix epoch.
  final int updated;

  /// The time when the billing credits become effective-when they’re eligible
  /// for use.
  final int? effectiveAt;

  /// The time when the billing credits expire. If not present, the billing
  /// credits don’t expire.
  final int? expiresAt;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  /// A descriptive name shown in dashboard.
  final String? name;

  /// The time when this credit grant was voided. If not present, the credit
  /// grant hasn’t been voided.
  final int? voidedAt;

  CreditGrant({
    required this.object,
    required this.id,
    required this.amount,
    required this.applicabilityConfig,
    required this.category,
    required this.created,
    required this.customer,
    required this.livemode,
    required this.updated,
    this.effectiveAt,
    this.expiresAt,
    this.metadata,
    this.name,
    this.voidedAt,
  });

  factory CreditGrant.fromJson(Map<String, dynamic> json) =>
      _$CreditGrantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditGrantToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-amount
@JsonSerializable()
class CreditGrantAmount {
  /// The monetary amount.
  final CreditGrantAmountMonetary? monetary;

  /// The type of this amount. We currently only support monetary billing
  /// credits.
  final CreditGrantAmountType type;

  CreditGrantAmount({

    required this.type,
    this.monetary,
  });

  factory CreditGrantAmount.fromJson(Map<String, dynamic> json) =>
      _$CreditGrantAmountFromJson(json);

  Map<String, dynamic> toJson() => _$CreditGrantAmountToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-amount-monetary
@JsonSerializable()
class CreditGrantAmountMonetary {
  /// Three-letter ISO currency code, in lowercase. Must be a supported
  /// currency.
  final String currency;

  /// A positive integer representing the amount.
  final int value;

  CreditGrantAmountMonetary({
    required this.currency,
    required this.value,
  });

  factory CreditGrantAmountMonetary.fromJson(Map<String, dynamic> json) =>
      _$CreditGrantAmountMonetaryFromJson(json);

  Map<String, dynamic> toJson() => _$CreditGrantAmountMonetaryToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-amount-type
enum CreditGrantAmountType {
  /// The amount is a monetary amount.
  monetary,
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-applicability_config
@JsonSerializable()
class CreditGrantApplicabilityConfig {
  /// Specify the scope of this applicability config.
  final CreditGrantApplicabilityConfigScope scope;

  CreditGrantApplicabilityConfig({
    required this.scope,
  });

  factory CreditGrantApplicabilityConfig.fromJson(Map<String, dynamic> json) =>
      _$CreditGrantApplicabilityConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CreditGrantApplicabilityConfigToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-applicability_config-scope
@JsonSerializable()
class CreditGrantApplicabilityConfigScope {
  /// The price type that credit grants can apply to. We currently only support
  /// the metered price type. This refers to prices that have a Billing Meter
  /// attached to them. Cannot be used in combination with prices.
  final CreditGrantApplicabilityConfigScopePriceType? priceType;

  CreditGrantApplicabilityConfigScope({
    this.priceType,
  });

  factory CreditGrantApplicabilityConfigScope.fromJson(
          Map<String, dynamic> json) =>
      _$CreditGrantApplicabilityConfigScopeFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreditGrantApplicabilityConfigScopeToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-applicability_config-scope-price_type
enum CreditGrantApplicabilityConfigScopePriceType {
  /// Credit grants being created can only apply to metered prices.
  metered,
}

/// https://docs.stripe.com/api/billing/credit-grant/object#billing_credit_grant_object-category
enum CreditGrantCategory {
  /// The credit grant was purchased by the customer for some amount.
  paid,

  /// The credit grant was given to the customer for free.
  promotional,
}
