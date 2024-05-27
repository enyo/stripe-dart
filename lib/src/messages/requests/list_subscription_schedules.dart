part of '../../../messages.dart';

@JsonSerializable()
class ListSubscriptionSchedulesRequest extends Message {
  final String? customer;

  final int? limit;

  const ListSubscriptionSchedulesRequest({
    this.customer,
    this.limit,
  });

  factory ListSubscriptionSchedulesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ListSubscriptionSchedulesRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ListSubscriptionSchedulesRequestToJson(this);
}
