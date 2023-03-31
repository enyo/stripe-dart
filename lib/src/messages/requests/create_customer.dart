part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/create
abstract class _CustomerRequest {
  /// An arbitrary string that you can attach to a customer object. It is
  /// displayed alongside the customer in the dashboard.
  final String? description;

  /// Customer’s email address. It’s displayed alongside the customer in your
  /// dashboard and can be useful for searching and tracking. This may be up to
  /// 512 characters.
  final String? email;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format. Individual keys can be unset by posting an empty value to them.
  /// All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// The customer’s full name or business name.
  final String? name;

  /// The ID of the PaymentMethod to attach to the customer.
  final String? paymentMethod;

  /// The customer’s phone number.
  final String? phoneNumber;

  _CustomerRequest({
    this.description,
    this.email,
    this.metadata,
    this.name,
    this.paymentMethod,
    this.phoneNumber,
  });
}

@JsonSerializable()
class CreateCustomerRequest extends _CustomerRequest {
  CreateCustomerRequest({
    String? description,
    String? email,
    Map<String, String>? metadata,
    String? name,
    String? paymentMethod,
    String? phoneNumber,
  }) : super(
          description: description,
          email: email,
          metadata: metadata,
          name: name,
          paymentMethod: paymentMethod,
          phoneNumber: phoneNumber,
        );

  factory CreateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerRequestToJson(this);
}
