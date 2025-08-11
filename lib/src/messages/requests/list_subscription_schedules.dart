part of '../../../messages.dart';

@JsonSerializable()
class ListSubscriptionSchedulesRequest extends Message {

  const ListSubscriptionSchedulesRequest({
    this.customer,
    this.limit,
  });

  factory ListSubscriptionSchedulesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ListSubscriptionSchedulesRequestFromJson(json);
  final String? customer;

  final int? limit;

  @override
  Map<String, dynamic> toJson() =>
      _$ListSubscriptionSchedulesRequestToJson(this);
}
