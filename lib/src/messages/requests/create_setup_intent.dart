part of '../../../messages.dart';

@JsonSerializable()
class CreateSetupIntentRequest {
  final String? clientSecret;
  final String? status;
  final String? customer;
  final String? description;
  final Map<String, String>? metadata;
  final String? paymentMethod;

  CreateSetupIntentRequest({
    this.clientSecret,
    this.status,
    this.customer,
    this.description,
    this.metadata,
    this.paymentMethod,
  });

  factory CreateSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSetupIntentRequestToJson(this);
}
