part of '../../messages.dart';

enum _EventObject { event }

/// https://stripe.com/docs/api/events/object
abstract class Event<T extends Message> extends Message {
  final _EventObject object;

  /// Unique identifier for the object.
  final String id;

  /// Time at which the object was created. Measured in seconds since the Unix
  /// epoch.
  final int created;

  /// Object containing data associated with the event.
  EventData<T> data;

  /// Description of the event (e.g., invoice.created or charge.refunded).
  final String type;

  /// Whether the event is coming from live mode.
  final bool livemode;

  Event({
    required this.object,
    required this.id,
    required this.created,
    required this.data,
    required this.type,
    required this.livemode,
  });

  static T fromJson<T extends Event>(Map<String, dynamic> json) {
    switch (
        (json['data']['object']['object'] as String?)?.trim().toLowerCase()) {
      // case 'balance_transaction':
      //   return BalanceTransactionEvent.fromJson(json) as T;
      case 'charge':
        return ChargeEvent.fromJson(json) as T;
      case 'checkout.session':
        return CheckoutSessionEvent.fromJson(json) as T;
      case 'customer':
        return CustomerEvent.fromJson(json) as T;
      case 'payment_intent':
        return PaymentIntentEvent.fromJson(json) as T;
      // case 'portal_session'     :
      //   return PortalSessionEvent.fromJson(json) as T;
      // case 'price'              :
      //   return PriceEvent.fromJson(json) as T;
      // case 'product'            :
      //   return ProductEvent.fromJson(json) as T;
      case 'refund':
        return RefundEvent.fromJson(json) as T;
      case 'subscription':
        return SubscriptionEvent.fromJson(json) as T;
      case 'payment_method':
        return PaymentMethodEvent.fromJson(json) as T;
      case 'invoice':
        return InvoiceEvent.fromJson(json) as T;
      default:
        throw FormatException(
            'Unrecognized/unsupported Stripe object `${json['object']}` in event webhook');
    }
  }
}

@JsonSerializable()
class EventData<T> {
  final T object;

  /// Object containing the names of the updated attributes and their values
  /// prior to the event (only included in events of type *.updated).
  /// If an array attribute has any updated elements, this object contains the
  /// entire array.
  ///
  /// In Stripe API versions 2017-04-06 or earlier, an updated array attribute
  /// in this object includes only the updated array elements.
  final Map<String, dynamic>? previousAttributes;

  EventData({
    required this.object,
    this.previousAttributes,
  });

  factory EventData.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$EventDataFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$EventDataToJson(this, toJsonT);
}

@JsonSerializable()
class SubscriptionEvent extends Event<Subscription> {
  SubscriptionEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<Subscription> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory SubscriptionEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionEventToJson(this);
}

@JsonSerializable()
class CustomerEvent extends Event<Customer> {
  CustomerEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<Customer> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory CustomerEvent.fromJson(Map<String, dynamic> json) =>
      _$CustomerEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerEventToJson(this);
}

@JsonSerializable()
class ChargeEvent extends Event<Charge> {
  ChargeEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<Charge> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory ChargeEvent.fromJson(Map<String, dynamic> json) =>
      _$ChargeEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargeEventToJson(this);
}

@JsonSerializable()
class PaymentIntentEvent extends Event<PaymentIntent> {
  PaymentIntentEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<PaymentIntent> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory PaymentIntentEvent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentIntentEventToJson(this);
}

@JsonSerializable()
class RefundEvent extends Event<Refund> {
  RefundEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<Refund> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory RefundEvent.fromJson(Map<String, dynamic> json) =>
      _$RefundEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefundEventToJson(this);
}

@JsonSerializable()
class CheckoutSessionEvent extends Event<CheckoutSession> {
  CheckoutSessionEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<CheckoutSession> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory CheckoutSessionEvent.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CheckoutSessionEventToJson(this);
}

@JsonSerializable()
class PaymentMethodEvent extends Event<PaymentMethod> {
  PaymentMethodEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<PaymentMethod> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory PaymentMethodEvent.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodEventToJson(this);
}

@JsonSerializable()
class InvoiceEvent extends Event<Invoice> {
  InvoiceEvent({
    required _EventObject object,
    required String id,
    required int created,
    required String type,
    required EventData<Invoice> data,
    required bool livemode,
  }) : super(
          object: object,
          id: id,
          created: created,
          data: data,
          type: type,
          livemode: livemode,
        );

  factory InvoiceEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceEventToJson(this);
}
