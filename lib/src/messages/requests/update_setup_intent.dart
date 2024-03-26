part of '../../../messages.dart';

@JsonSerializable()
class UpdateSetupIntentRequest {
  /// Unique identifier for the object.
  final String id;

  final String? paymentMethod;

  UpdateSetupIntentRequest({
    required this.id,
    this.paymentMethod,
  });

  factory UpdateSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateSetupIntentRequestToJson(this)..remove('id');
}
