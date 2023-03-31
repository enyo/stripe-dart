part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/update

@JsonSerializable()
class UpdateCustomerRequest extends _CustomerRequest {
  /// Unique identifier for the object.
  final String id;

  UpdateCustomerRequest({
    required this.id,
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

  factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateCustomerRequestToJson(this)..remove('id');
}
