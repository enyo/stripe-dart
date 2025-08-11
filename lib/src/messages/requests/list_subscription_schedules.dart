part of '../../../messages.dart';

@JsonSerializable()
class ListSubscriptionSchedulesRequest {
  const ListSubscriptionSchedulesRequest({
    this.customer,
    this.limit,
  });

  factory ListSubscriptionSchedulesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ListSubscriptionSchedulesRequestFromJson(json);
  final String? customer;

  final int? limit;

  Map<String, dynamic> toJson() =>
      _$ListSubscriptionSchedulesRequestToJson(this);
}
