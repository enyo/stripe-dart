part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/sessions/create
@JsonSerializable()
class CreateSessionRequest {
  /// The URL to which Stripe should send customers when payment or setup is
  /// complete. If you’d like access to the Checkout Session for the successful
  /// payment, read more about it in the guide on fulfilling orders.
  final String successUrl;

  /// The URL the customer will be directed to if they decide to cancel payment
  /// and return to your website.
  final String cancelUrl;

  /// A list of the types of payment methods (e.g., card) this Checkout Session
  /// can accept.
  ///
  /// Read more about the supported payment methods and their requirements in
  /// our payment method details guide.
  ///
  /// If multiple payment methods are passed, Checkout will dynamically reorder
  /// them to prioritize the most relevant payment methods based on the
  /// customer’s location and other characteristics.
  final List<PaymentMethodType> paymentMethodTypes;

  /// If provided, this value will be used when the Customer object is created.
  /// If not provided, customers will be asked to enter their email address. Use
  /// this parameter to prefill customer data if you already have an email on
  /// file. To access information about the customer once a session is complete,
  /// use the customer field.
  final String? customerEmail;

  /// ID of an existing customer, if one exists. The email stored on the
  /// customer will be used to prefill the email field on the Checkout page. If
  /// the customer changes their email on the Checkout page, the Customer object
  /// will be updated with the new email. If blank for Checkout Sessions in
  /// payment or subscription mode, Checkout will create a new customer object
  /// based on information provided during the payment flow.
  final String? customer;

  /// A list of items the customer is purchasing. Use this parameter to pass
  /// one-time or recurring Prices. One-time Prices in subscription mode will be
  /// on the initial invoice only.
  ///
  /// There is a maximum of 100 line items, however it is recommended to
  /// consolidate line items if there are more than a few dozen.
  final List<LineItem>? lineItems;

  CreateSessionRequest({
    required this.successUrl,
    required this.cancelUrl,
    required this.paymentMethodTypes,
    this.customerEmail,
    this.customer,
    this.lineItems,
  });

  factory CreateSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateSessionRequestToJson(this);
}

@JsonSerializable()
class LineItem {
  final int? amount;
  final String? currency;
  final List<String>? images;
  final int? quantity;
  final String? name;
  final String? description;

  LineItem({
    this.amount,
    this.currency,
    this.images,
    this.quantity,
    this.name,
    this.description,
  });

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}
