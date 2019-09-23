part of '../../messages.dart';

@JsonSerializable(
    nullable: false, disallowUnrecognizedKeys: false, explicitToJson: true)
class Session {
  final String id;

  @JsonKey(nullable: true)
  final String customer;

  @JsonKey(name: 'payment_intent')
  final String paymentIntent;
  Session(
      {@required this.id,
      @required this.customer,
      @required this.paymentIntent});

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
