part of '../../../messages.dart';

/// https://docs.stripe.com/api/billing/credit-grant/create
@JsonSerializable()
class CreateCreditGrantRequest {
  /// Amount of this credit grant.
  final CreditGrantCreateRequestAmount amount;

  /// Configuration specifying what this credit grant applies to. We currently
  /// only support metered prices that have a Billing Meter attached to them.
  final CreditGrantCreateRequestApplicabilityConfig applicabilityConfig;

  /// The category of this credit grant.
  final CreditGrantCategory category;

  /// ID of the customer to receive the billing credits.
  final String customer;

  /// The time when the billing credits become effective-when they’re eligible
  /// for use. It defaults to the current timestamp if not specified.
  final int? effectiveAt;

  /// The time when the billing credits expire. If not specified, the billing
  /// credits don’t expire.
  final int? expiresAt;

  /// Set of key-value pairs that you can attach to an object. You can use this
  /// to store additional information about the object (for example, cost basis)
  /// in a structured format.
  final Map<String, dynamic>? metadata;

  /// A descriptive name shown in the Dashboard.
  final String? name;

  CreateCreditGrantRequest({
    required this.amount,
    required this.applicabilityConfig,
    required this.category,
    required this.customer,
    this.effectiveAt,
    this.expiresAt,
    this.metadata,
    this.name,
  });

  factory CreateCreditGrantRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCreditGrantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCreditGrantRequestToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/create#create_billing_credit_grant-amount
@JsonSerializable()
class CreditGrantCreateRequestAmount {
  /// Specify the type of this amount. We currently only support monetary
  /// billing credits.
  final CreditGrantAmountType type;

  /// The monetary amount.
  final CreditGrantAmountMonetary monetary;

  CreditGrantCreateRequestAmount({
    required this.type,
    required this.monetary,
  });

  factory CreditGrantCreateRequestAmount.fromJson(Map<String, dynamic> json) =>
      _$CreditGrantCreateRequestAmountFromJson(json);

  Map<String, dynamic> toJson() => _$CreditGrantCreateRequestAmountToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/create#create_billing_credit_grant-applicability_config
@JsonSerializable()
class CreditGrantCreateRequestApplicabilityConfig {
  /// Specify the scope of this applicability config.
  final CreditGrantCreateRequestApplicabilityConfigScope scope;

  CreditGrantCreateRequestApplicabilityConfig({
    required this.scope,
  });

  factory CreditGrantCreateRequestApplicabilityConfig.fromJson(
          Map<String, dynamic> json) =>
      _$CreditGrantCreateRequestApplicabilityConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreditGrantCreateRequestApplicabilityConfigToJson(this);
}

/// https://docs.stripe.com/api/billing/credit-grant/create#create_billing_credit_grant-applicability_config
@JsonSerializable()
class CreditGrantCreateRequestApplicabilityConfigScope {
  /// The price type that credit grants can apply to. We currently only support
  /// the metered price type. Cannot be used in combination with prices.
  final CreditGrantApplicabilityConfigScopePriceType? priceType;

  CreditGrantCreateRequestApplicabilityConfigScope({
    this.priceType,
  });

  factory CreditGrantCreateRequestApplicabilityConfigScope.fromJson(
          Map<String, dynamic> json) =>
      _$CreditGrantCreateRequestApplicabilityConfigScopeFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreditGrantCreateRequestApplicabilityConfigScopeToJson(this);
}
