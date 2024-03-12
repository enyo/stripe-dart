part of '../../messages.dart';

/// https://docs.stripe.com/api/invoices/object
@JsonSerializable()
class Invoice extends Message {
  /// Unique identifier for the object. This property is always present unless
  /// the invoice is an upcoming invoice.
  final String id;

  /// Three-letter ISO currency code, in lowercase. Must be a supported
  /// currency.
  final String currency;

  /// The ID of the customer who will be billed.
  final String customer;

  /// Total after discounts and taxes.
  final int total;

  /// An arbitrary string attached to the object. Often useful for displaying
  /// to users. Referenced as ‘memo’ in the Dashboard.
  final String? description;

  /// The URL for the hosted invoice page, which allows customers to view and
  /// pay an invoice. If the invoice has not been finalized yet, this will be
  /// null.
  final String? hostedInvoiceUrl;

  /// The status of the invoice, one of draft, open, paid, uncollectible, or
  /// void.
  final String? status;

  /// The subscription that this invoice was prepared for, if any.
  final String? subscription;

  /// The country of the business associated with this invoice, most often the
  /// business creating the invoice.
  final String? accountCountry;

  /// The public name of the business associated with this invoice, most often
  /// the business creating the invoice.
  final String? accountName;

  Invoice({
    required this.id,
    required this.currency,
    required this.customer,
    required this.total,
    this.description,
    this.hostedInvoiceUrl,
    this.status,
    this.subscription,
    this.accountCountry,
    this.accountName,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
