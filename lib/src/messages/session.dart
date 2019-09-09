part of '../../messages.dart';

@JsonSerializable(
    nullable: false, disallowUnrecognizedKeys: false, explicitToJson: true)
class Session {
  final String id;
  Session({@required this.id});

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
