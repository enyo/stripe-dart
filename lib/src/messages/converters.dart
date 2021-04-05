import 'package:json_annotation/json_annotation.dart';

/// Converts a [DateTime] to a timestamp int and vice versa.
class TimestampConverter implements JsonConverter<DateTime, int> {
  const TimestampConverter();

  @override
  DateTime fromJson(int value) =>
      DateTime.fromMillisecondsSinceEpoch(value * 1000);

  @override
  int toJson(DateTime type) => type.millisecondsSinceEpoch ~/ 1000;
}
