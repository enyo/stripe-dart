part of '../../messages.dart';

enum _CustomerObject { customer }

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class Customer extends Message {
  final _CustomerObject object;

  /// Unique identifier for the object.
  final String id;

  /// The customer’s default invoice settings.
  final InvoiceSettings invoiceSettings;

  /// An arbitrary string attached to the object. Often useful for displaying to
  /// users.
  final String? description;

  /// The customer’s email address.
  final String? email;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  /// The customer’s full name or business name.
  final String? name;

  Customer({
    required this.object,
    required this.id,
    required this.invoiceSettings,
    this.description,
    this.email,
    this.metadata,
    this.name,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

/// The customer’s default invoice settings.
/// https://docs.stripe.com/api/customers/object#customer_object-invoice_settings
@JsonSerializable()
class InvoiceSettings {
  /// ID of a payment method that’s attached to the customer, to be used as the
  /// customer’s default payment method for subscriptions and invoices.
  final String? defaultPaymentMethod;

  InvoiceSettings({
    this.defaultPaymentMethod,
  });

  factory InvoiceSettings.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceSettingsToJson(this);
}
