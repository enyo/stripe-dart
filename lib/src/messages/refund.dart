part of '../../messages.dart';

enum _RefundObject { refund }

/// https://stripe.com/docs/api/refunds/object
@JsonSerializable()
class Refund extends Message {
  final _RefundObject object;
  final String id;

  Refund({
    required this.object,
    required this.id,
  });

  factory Refund.fromJson(Map<String, dynamic> json) => _$RefundFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefundToJson(this);
}
