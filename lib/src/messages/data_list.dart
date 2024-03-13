part of '../../messages.dart';

enum _SubListObject {
  list,
  @JsonValue('search_result')
  searchResult,
}

@JsonSerializable()
class DataList<T> {
  final _SubListObject object;

  final List<T> data;
  final bool hasMore;
  final String url;

  DataList({
    required this.object,
    required this.data,
    required this.hasMore,
    required this.url,
  });

  factory DataList.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$DataListFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$DataListToJson(this, toJsonT);
}
