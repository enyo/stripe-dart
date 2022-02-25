part of '../../messages.dart';

// ignore: constant_identifier_names
enum _PaymentIntentObject { payment_intent }

/// https://stripe.com/docs/api/payment_intents/object
@JsonSerializable()
class PaymentIntent {
  final _PaymentIntentObject object;

  final String id;
  final String status;
  final DataList<Charge> charges;

  PaymentIntent({
    required this.object,
    required this.id,
    required this.status,
    required this.charges,
  });
  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}
