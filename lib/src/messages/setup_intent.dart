part of '../../messages.dart';

// [NEW]

// ignore: constant_identifier_names
enum _SetupIntentObject { setup_intent }

/// https://stripe.com/docs/api/payment_intents/object
@JsonSerializable()
class SetupIntent extends Message {
  final _SetupIntentObject object;

  final String id;
  final String clientSecret;
  final String status;
  @TimestampConverter()
  final DateTime? created;
  final String? customer;
  final String? description;
  final Map<String, String>? metadata;
  final String? paymentMethod;
  final Set<PaymentMethodType>? paymentMethodTypes;

  SetupIntent({
    required this.object,
    required this.id,
    required this.clientSecret,
    required this.status,
    this.created,
    this.customer,
    this.description,
    this.metadata,
    this.paymentMethod,
    this.paymentMethodTypes,
  });

  factory SetupIntent.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetupIntentToJson(this);
}
