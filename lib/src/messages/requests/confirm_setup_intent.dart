part of '../../../messages.dart';

@JsonSerializable()
class ConfirmSetupIntentRequest {
  /// Unique identifier for the object.
  final String id;

  final String? paymentMethod;

  ConfirmSetupIntentRequest({
    required this.id,
    this.paymentMethod,
  });

  factory ConfirmSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmSetupIntentRequestToJson(this);
}
