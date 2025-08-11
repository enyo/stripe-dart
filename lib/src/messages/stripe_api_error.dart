part of '../../messages.dart';

@JsonSerializable()
class StripeApiError {

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
  final StripeApiErrorType type;
  final String? code;
  final String? declineCode;
  final String? message;
  final String? param;
  final PaymentIntent? paymentIntent;

  Map<String, dynamic> toJson() => _$StripeApiErrorToJson(this);

  @override
  String toString() => '${toJson()}';
}
