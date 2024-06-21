part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/create
@JsonSerializable()
class CreatePriceRequest {
  /// Three-letter ISO currency code, in lowercase. Must be a supported currency. (REQUIRED)
  final String currency;

  /// The ID of the product that this price will belong to. (REQUIRED UNLESS PRODUCT_DATA IS PROVIDED)
  final String? product;

  /// A positive integer in cents (or 0 for a free price) representing how much to charge.
  /// One of unit_amount or custom_unit_amount is required, unless billing_scheme=tiered. (REQUIRED CONDITIONALLY)
  final int? unitAmount;

  /// Whether the price can be used for new purchases. Defaults to true.
  final bool? active;

  /// Set of key-value pairs that you can attach to an object.
  final Map<String, dynamic>? metadata;

  /// A brief description of the price, hidden from customers.
  final String? nickname;

  /// The recurring components of a price such as interval and usage_type.
  final Recurring? recurring;

  /// Additional parameters for the price.
  final PriceParameters? parameters;

  CreatePriceRequest({
    required this.currency,
    this.product,
    this.unitAmount,
    this.active,
    this.metadata,
    this.nickname,
    this.recurring,
    this.parameters,
  });

  factory CreatePriceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceRequestFromJson(json);

  Map<String, dynamic> toJson() {
    final data = _$CreatePriceRequestToJson(this);

    if (parameters != null) {
      data.addAll(parameters!.toJson());
    }

    return data;
  }
}

enum RecurringInterval {
  day,
  week,
  month,
  year,
}

enum AggregateUsage {
  /// Summing up all usage during a period
  sum,

  /// Using the last usage record reported within a period
  // ignore: constant_identifier_names
  last_during_period,

  /// Using the last usage record ever (across period bounds)
  // ignore: constant_identifier_names
  last_ever,

  /// Usage record with the maximum reported usage during a period
  max,
}

/// Recurring components of a price such as `interval` and `usage_type`.
@JsonSerializable()
class Recurring {
  /// Specifies billing frequency. Either `day`, `week`, `month`, or `year`. (REQUIRED)
  final RecurringInterval interval;

  /// Specifies a usage aggregation strategy for prices of `usage_type=metered`.
  /// Allowed values are `sum` for summing up all usage during a period,
  /// `last_during_period` for using the last usage record reported within a period,
  /// `last_ever` for using the last usage record ever (across period bounds) or
  /// `max` which uses the usage record with the maximum reported usage during a period.
  /// Defaults to `sum`.
  final AggregateUsage? aggregateUsage;

  /// The number of intervals between subscription billings.
  /// For example, `interval=month` and `interval_count=3` bills every 3 months.
  /// Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
  final int? intervalCount;

  /// Configures how the quantity per period should be determined.
  /// Can be either `metered` or `licensed`.
  /// `licensed` automatically bills the `quantity` set when adding it to a subscription.
  /// `metered` aggregates the total usage based on usage records.
  /// Defaults to `licensed`.
  final String? usageType;

  Recurring({
    required this.interval,
    this.aggregateUsage,
    this.intervalCount,
    this.usageType,
  });

  factory Recurring.fromJson(Map<String, dynamic> json) =>
      _$RecurringFromJson(json);
  Map<String, dynamic> toJson() => _$RecurringToJson(this);
}

/// Additional parameters for the price.
@JsonSerializable()
class PriceParameters {
  /// Custom unit amount for the price. (REQUIRED UNLESS UNIT_AMOUNT IS PROVIDED)
  final int? customUnitAmount;

  /// Additional data for the product. (REQUIRED UNLESS PRODUCT IS PROVIDED)
  final ProductData? productData;

  /// Tiers for the price. (REQUIRED IF BILLING_SCHEME=TIERED)
  final List<Map<String, dynamic>>? tiers;

  /// Mode for using tiers. (REQUIRED IF BILLING_SCHEME=TIERED)
  final String? tiersMode;

  /// Billing scheme for the price.
  final String? billingScheme;

  /// Optional currency options for the price.
  final Map<String, dynamic>? currencyOptions;

  /// Lookup key for the price.
  final String? lookupKey;

  /// Tax behavior for the price.
  final String? taxBehavior;

  /// Transfer lookup key for the price.
  final String? transferLookupKey;

  /// Transform quantity for the price.
  final Map<String, dynamic>? transformQuantity;

  /// Optional unit amount decimal for the price.
  final double? unitAmountDecimal;

  PriceParameters({
    this.customUnitAmount,
    this.productData,
    this.tiers,
    this.tiersMode,
    this.billingScheme,
    this.currencyOptions,
    this.lookupKey,
    this.taxBehavior,
    this.transferLookupKey,
    this.transformQuantity,
    this.unitAmountDecimal,
  });

  factory PriceParameters.fromJson(Map<String, dynamic> json) =>
      _$PriceParametersFromJson(json);
  Map<String, dynamic> toJson() => _$PriceParametersToJson(this);
}
