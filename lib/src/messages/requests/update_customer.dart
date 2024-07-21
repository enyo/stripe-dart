part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/update

@JsonSerializable()
class UpdateCustomerRequest extends _CustomerRequest {
  /// Unique identifier for the object.
  final String id;

  UpdateCustomerRequest({
    required this.id,
    super.description,
    super.email,
    super.metadata,
    super.name,
    super.paymentMethod,
    super.phoneNumber,
  });

  factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateCustomerRequestToJson(this)..remove('id');
}
