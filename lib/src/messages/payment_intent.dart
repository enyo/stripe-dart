part of '../../messages.dart';

@JsonSerializable(
    nullable: false, disallowUnrecognizedKeys: false, explicitToJson: true)
class PaymentIntent {
  final String id;
  final String status;
  final List<Charge> charges;

  PaymentIntent({
    @required this.id,
    @required this.status,
    @required this.charges,
  });
  factory PaymentIntent.fromJson(Map<String, dynamic> json) {
    if (json == null || json['object'] != 'payment_intent') {
      throw InvalidResourceException(
          'The resource object should be "payment_intent": $json ');
    }

    /// Ugly workaround to handle Stripe list objects.
    json['charges'] = json['charges']['data'];
    return _$PaymentIntentFromJson(json);
  }
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);

  String getFirstChargeId() => charges.first.id;
}
