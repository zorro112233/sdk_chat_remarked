import 'package:sdk_chat_remarked/src/domain/message.cg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/receive_message.cg.f.dart';

@freezed
class ReceiveMessage with _$ReceiveMessage {
  const factory ReceiveMessage({
    required List<Message> messages,
  }) = _ReceiveMessage;
}
