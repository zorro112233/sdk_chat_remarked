import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdk_chat_remarked/src/domain/meta.cg.dart';

import 'message.cg.dart';

part 'gen/messages.cg.f.dart';

@freezed
class AllMessages with _$AllMessages {
  const factory AllMessages({
    required Unseen unseen,
  }) = _AllMessages;

  /// Заглушка
  static const empty = AllMessages(
    unseen: Unseen.empty,
  );
}

@freezed
class Unseen with _$Unseen {
  const factory Unseen({
    required int count,
    required List<Message> messages,
    required Meta meta,
  }) = _Unseen;

  /// Заглушка
  static const empty = Unseen(
    count: 0,
    messages: [],
    meta: Meta.empty,
  );
}
