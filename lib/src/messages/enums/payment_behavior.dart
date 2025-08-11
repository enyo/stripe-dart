import 'package:json_annotation/json_annotation.dart';

enum PaymentBehavior {
  @JsonValue('allow_incomplete')
  allowIncomplete,
  @JsonValue('default_incomplete')
  defaultIncomplete,
  @JsonValue('error_if_incomplete')
  errorIfIncomplete,
  @JsonValue('pending_if_incomplete')
  pendingIfIncomplete,
}
