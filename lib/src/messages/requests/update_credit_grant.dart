part of '../../../messages.dart';

/// https://docs.stripe.com/api/billing/credit-grant/update
@JsonSerializable()
class UpdateCreditGrantRequest {
  /// Unique identifier for the object.
  final String id;

  /// The time when the billing credits created by this credit grant expire. If
  /// set to empty, the billing credits never expire.
  final int? expiresAt;

  /// Set of key-value pairs you can attach to an object. You can use this to
  /// store additional information about the object (for example, cost basis) in
  /// a structured format.
  final Map<String, dynamic>? metadata;

  UpdateCreditGrantRequest({
    required this.id,
    this.expiresAt,
    this.metadata,
  });

  factory UpdateCreditGrantRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCreditGrantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCreditGrantRequestToJson(this);
}
