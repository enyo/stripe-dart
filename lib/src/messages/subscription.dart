part of '../../messages.dart';

enum _SubscriptionObject { subscription }

enum SubscriptionStatus {
  incomplete,
  // ignore: constant_identifier_names
  incomplete_expired,
  trialing,
  active,
  // ignore: constant_identifier_names
  past_due,
  canceled,
  unpaid,
  // Only available for requests:
  all,
  ended,
}

/// https://stripe.com/docs/api/subscriptions/object
@JsonSerializable()
class Subscription extends Message {
  final _SubscriptionObject object;

  /// Unique identifier for the object.
  final String id;

  /// Time at which the object was created. Measured in seconds since the Unix
  /// epoch.
  final int created;

  /// ID of the customer who owns the subscription.
  final String customer;

  /// Start of the current period that the subscription has been invoiced for.
  @TimestampConverter()
  final DateTime currentPeriodStart;

  /// End of the current period that the subscription has been invoiced for. At
  /// the end of this period, a new invoice will be created.
  @TimestampConverter()
  final DateTime currentPeriodEnd;

  /// Possible values are incomplete, incomplete_expired, trialing, active,
  /// past_due, canceled, or unpaid.
  ///
  /// For collection_method=charge_automatically a subscription moves into
  /// incomplete if the initial payment attempt fails. A subscription in this
  /// state can only have metadata and default_source updated. Once the first
  /// invoice is paid, the subscription moves into an active state. If the first
  /// invoice is not paid within 23 hours, the subscription transitions to
  /// incomplete_expired. This is a terminal state, the open invoice will be
  /// voided and no further invoices will be generated.
  ///
  /// A subscription that is currently in a trial period is trialing and moves
  /// to active when the trial period is over.
  ///
  /// If subscription collection_method=charge_automatically it becomes past_due
  /// when payment to renew it fails and canceled or unpaid (depending on your
  /// subscriptions settings) when Stripe has exhausted all payment retry
  /// attempts.
  ///
  /// If subscription collection_method=send_invoice it becomes past_due when
  /// its invoice is not paid by the due date, and canceled or unpaid if it is
  /// still not paid by an additional deadline after that. Note that when a
  /// subscription has a status of unpaid, no subsequent invoices will be
  /// attempted (invoices will be created, but then immediately automatically
  /// closed). After receiving updated payment information from a customer, you
  /// may choose to reopen and pay their closed invoices.
  final SubscriptionStatus status;

  /// List of subscription items, each with an attached price.
  final DataList<SubscriptionItem> items;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  Subscription({
    required this.object,
    required this.id,
    required this.created,
    required this.customer,
    required this.status,
    required this.items,
    required this.currentPeriodStart,
    required this.currentPeriodEnd,
    this.metadata,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
