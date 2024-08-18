import 'package:sdk_chat_remarked/src/dto/message.cg.dart';
import 'package:sdk_chat_remarked/src/domain/messages.cg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/messages.cg.f.dart';
part 'gen/messages.cg.g.dart';

@freezed
class AllMessagesDto with _$AllMessagesDto {
  const factory AllMessagesDto({
    UnseenDto? unseen,
  }) = _AllMessagesDto;

  /// конструктор
  const AllMessagesDto._();

  /// используем фабричный конструктор
  factory AllMessagesDto.fromJson(Map<String, dynamic> json) =>
      _$AllMessagesDtoFromJson(json);

  AllMessages toDomain() {
    return AllMessages(
      unseen: unseen?.toDomain() ?? Unseen.empty,
    );
  }
}

@freezed
class UnseenDto with _$UnseenDto {
  const factory UnseenDto({
    int? count,
    List<MessageDto>? messages,
  }) = _UnseenDto;

  /// конструктор
  const UnseenDto._();

  /// используем фабричный конструктор
  factory UnseenDto.fromJson(Map<String, dynamic> json) =>
      _$UnseenDtoFromJson(json);

  /// Конвертер в домен.
  Unseen toDomain() {
    return Unseen(
      count: count ?? 0,
      messages: messages?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
