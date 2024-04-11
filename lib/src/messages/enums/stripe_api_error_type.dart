import 'package:json_annotation/json_annotation.dart';

enum StripeApiErrorType {
  @JsonValue('api_error')
  apiError,
  @JsonValue('card_error')
  cardError,
  @JsonValue('idempotency_error')
  idempotencyError,
  @JsonValue('invalid_request_error')
  invalidRequestError,
}
