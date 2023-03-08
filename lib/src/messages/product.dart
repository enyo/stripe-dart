part of '../../messages.dart';

enum _ProductObject { product }

/// https://stripe.com/docs/api/products/object
@JsonSerializable()
class Product extends Message {
  final _ProductObject object;

  /// Unique identifier for the object.
  final String id;

  /// Whether the product is currently available for purchase.
  final bool active;

  /// The product’s description, meant to be displayable to the customer. Use
  /// this field to optionally store a long form explanation of the product
  /// being sold for your own rendering purposes.
  final String? description;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  /// The product’s name, meant to be displayable to the customer. Whenever this
  /// product is sold via a subscription, name will show up on associated
  /// invoice line item descriptions.
  final String name;

  Product({
    required this.object,
    required this.id,
    required this.active,
    this.description,
    this.metadata,
    required this.name,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
