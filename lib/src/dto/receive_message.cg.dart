import 'package:sdk_chat_remarked/src/dto/message.cg.dart';
import 'package:sdk_chat_remarked/src/domain/receive_message.cg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/receive_message.cg.f.dart';
part 'gen/receive_message.cg.g.dart';

@freezed
class ReceiveMessageDto with _$ReceiveMessageDto {
  const factory ReceiveMessageDto({
    List<MessageDto>? messages,
  }) = _ReceiveMessageDto;

  /// конструктор
  const ReceiveMessageDto._();

  /// используем фабричный конструктор
  factory ReceiveMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiveMessageDtoFromJson(json);

  /// Конвертер в домен.
  ReceiveMessage toDomain() {
    return ReceiveMessage(
      messages: messages?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
