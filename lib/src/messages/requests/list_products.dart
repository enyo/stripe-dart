part of '../../../messages.dart';

/// https://stripe.com/docs/api/products/list
@JsonSerializable()
class ListProductsRequest {

  ListProductsRequest({
    this.active,
  });

  factory ListProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListProductsRequestFromJson(json);
  /// Only return products that are active or inactive (e.g., pass false to list
  /// all inactive products).
  final bool? active;
  Map<String, dynamic> toJson() => _$ListProductsRequestToJson(this);
}
