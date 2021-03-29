part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/refunds/create
@JsonSerializable()
class CreateRefundRequest {
  /// The identifier of the charge to refund.
  final String? charge;

  /// A positive integer in cents representing how much of this charge to
  /// refund. Can refund only up to the remaining, unrefunded amount of the
  /// charge.
  final int? amount;

  /// ID of the PaymentIntent to refund.
  final String? paymentIntent;

  /// String indicating the reason for the refund. If set, possible values are
  /// duplicate, fraudulent, and requested_by_customer. If you believe the
  /// charge to be fraudulent, specifying fraudulent as the reason will add the
  /// associated card and email to your block lists, and will also help us
  /// improve our fraud detection algorithms.
  final String? reason;

  CreateRefundRequest({
    this.charge,
    this.amount,
    this.paymentIntent,
    this.reason,
  });

  factory CreateRefundRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRefundRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateRefundRequestToJson(this);
}
