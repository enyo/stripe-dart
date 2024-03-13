part of '../../../messages.dart';

/// https://docs.stripe.com/api/subscription_items/list
@JsonSerializable()
class ListSubscriptionItemsRequest {
  /// The ID of the subscription whose items will be retrieved.
  final String? subscription;

  /// A cursor for use in pagination.
  /// ending_before is an object ID that defines your place in the list.
  /// For instance, if you make a list request and receive 100 objects,
  /// starting with obj_bar, your subsequent call can include ending_before=obj_bar
  /// in order to fetch the previous page of the list.
  final String? endingBefore;

  /// A limit on the number of objects to be returned.
  /// Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  /// A cursor for use in pagination.
  /// starting_after is an object ID that defines your place in the list.
  /// For instance, if you make a list request and receive 100 objects,
  /// ending with obj_foo, your subsequent call can include starting_after=obj_foo
  /// in order to fetch the next page of the list.
  final String? startingAfter;

  ListSubscriptionItemsRequest({
    this.subscription,
    this.endingBefore,
    this.limit,
    this.startingAfter,
  });

  factory ListSubscriptionItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListSubscriptionItemsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListSubscriptionItemsRequestToJson(this);
}
