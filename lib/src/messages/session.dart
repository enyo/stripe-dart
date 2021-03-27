part of '../../messages.dart';

@JsonSerializable(disallowUnrecognizedKeys: false, explicitToJson: true)
class Session {
  final String id;

  @JsonKey()
  final String? customer;

  @JsonKey(name: 'payment_intent')
  final String paymentIntent;
  Session({
    required this.id,
    this.customer,
    required this.paymentIntent,
  });

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
