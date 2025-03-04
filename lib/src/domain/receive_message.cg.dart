import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.cg.dart';

part 'gen/receive_message.cg.f.dart';

@freezed
abstract class ReceiveMessage with _$ReceiveMessage {
  const factory ReceiveMessage({
    required String status,
    required String message,
    required List<Message> messages,
  }) = _ReceiveMessage;
}
