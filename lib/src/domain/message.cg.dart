import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/consts.dart';

part 'gen/message.cg.f.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required int id,
    required String uuid,
    required DateTime timestamp,
    required String text,
    required bool isOutgoing,
    required int to,
    required String attachment,
  }) = _Message;

  /// Заглушка
  static final empty = Message(
    id: 0,
    uuid: '',
    timestamp: Consts.invalidDateTime,
    text: '',
    isOutgoing: false,
    to: 0,
    attachment: '',
  );
}
