import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/receive_message.cg.dart';
import 'message.cg.dart';

part 'gen/receive_message.cg.f.dart';
part 'gen/receive_message.cg.g.dart';

@freezed
abstract class ReceiveMessageDto with _$ReceiveMessageDto {
  const factory ReceiveMessageDto({
    String? status,
    String? message,
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
      status: status ?? '',
      message: message ?? '',
      messages: messages?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}
