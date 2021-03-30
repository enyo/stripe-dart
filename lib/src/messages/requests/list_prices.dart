part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/list
@JsonSerializable()
class ListPricesRequest {
  /// Only return products that are active or inactive (e.g., pass false to list
  /// all inactive products).
  final bool? active;

  /// Only return prices for the given currency.
  final String? currency;

  /// Only return prices for the given product.
  final String? product;

  ListPricesRequest({
    this.active,
    this.currency,
    this.product,
  });

  factory ListPricesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPricesRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListPricesRequestToJson(this);
}
