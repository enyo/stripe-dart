part of '../../messages.dart';

abstract class Message {
  const Message();

  Map<String, dynamic> toJson();
}
