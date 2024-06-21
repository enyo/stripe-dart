part of '../../messages.dart';

@JsonSerializable()
class StripeApiError {
  final StripeApiErrorType type;
  final String? code;
  final String? declineCode;
  final String? message;
  final String? param;
  final PaymentIntent? paymentIntent;

  StripeApiError({
    required this.type,
    required this.code,
    required this.declineCode,
    required this.message,
    required this.param,
    required this.paymentIntent,
  });

  factory StripeApiError.fromJson(Map<String, dynamic> json) =>
      _$StripeApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$StripeApiErrorToJson(this);

  @override
  String toString() => '${toJson()}';
}
