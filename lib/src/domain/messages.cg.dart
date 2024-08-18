import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _Unseen;

  /// Заглушка
  static const empty = Unseen(
    count: 0,
    messages: [],
  );
}
