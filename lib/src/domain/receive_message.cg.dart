import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.cg.dart';

part 'gen/receive_message.cg.f.dart';

@freezed
class ReceiveMessage with _$ReceiveMessage {
  const factory ReceiveMessage({
    required List<Message> messages,
  }) = _ReceiveMessage;
}
