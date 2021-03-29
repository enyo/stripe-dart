part of '../../messages.dart';

enum _SubListObject { list }

@JsonSerializable()
class SubList<T> {
  final _SubListObject object;

  final List<T> data;
  final bool hasMore;
  final String url;

  SubList({
    required this.object,
    required this.data,
    required this.hasMore,
    required this.url,
  });

  factory SubList.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$SubListFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SubListToJson(this, toJsonT);
}
