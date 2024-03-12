part of '../../messages.dart';

enum _EphemeralKeyObject { ephemeral_key }

@JsonSerializable()
class EphemeralKey extends Message {
  final _EphemeralKeyObject object;
  final String id;
  @TimestampConverter()
  final DateTime created;
  @TimestampConverter()
  final DateTime expires;
  final String secret;

  EphemeralKey({
    required this.object,
    required this.id,
    required this.created,
    required this.expires,
    required this.secret,
  });

  factory EphemeralKey.fromJson(Map<String, dynamic> json) =>
      _$EphemeralKeyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EphemeralKeyToJson(this);
}
