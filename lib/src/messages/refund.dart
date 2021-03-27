part of '../../messages.dart';

@JsonSerializable(disallowUnrecognizedKeys: false, explicitToJson: true)
class Refund {
  final String id;
  Refund({required this.id});

  factory Refund.fromJson(Map<String, dynamic> json) => _$RefundFromJson(json);
  Map<String, dynamic> toJson() => _$RefundToJson(this);
}
