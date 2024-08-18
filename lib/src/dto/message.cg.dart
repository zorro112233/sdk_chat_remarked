import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/message.cg.dart';

part 'gen/message.cg.f.dart';
part 'gen/message.cg.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const factory MessageDto({
    int? id,
    String? uuid,
    int? timestamp,
    String? text,
    String? direction,
    int? to,
  }) = _MessageDto;

  /// конструктор
  const MessageDto._();

  /// используем фабричный конструктор
  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  /// Конвертер в домен.
  Message toDomain() {
    return Message(
      id: id ?? 0,
      uuid: uuid ?? '',
      timestamp: DateTime.fromMillisecondsSinceEpoch((timestamp ?? 0) * 1000),
      text: text ?? '',
      isOutgoing: (direction ?? '') == 'out',
      to: to ?? 0,
    );
  }
}
