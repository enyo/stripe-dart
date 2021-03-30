part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/sessions/create
@JsonSerializable()
class ListSubscriptionsRequest {
  /// The ID of the customer whose subscriptions will be retrieved.
  final String? customer;

  /// Filter for subscriptions that contain this recurring price ID.
  final String? price;

  /// The status of the subscriptions to retrieve. Passing in a value of
  /// canceled will return all canceled subscriptions, including those belonging
  /// to deleted customers. Pass ended to find subscriptions that are canceled
  /// and subscriptions that are expired due to incomplete payment. Passing in a
  /// value of all will return subscriptions of all statuses.
  final SubscriptionStatus? status;

  ListSubscriptionsRequest({
    this.customer,
    this.price,
    this.status,
  });

  factory ListSubscriptionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListSubscriptionsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListSubscriptionsRequestToJson(this);
}
