import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdk_chat_remarked/src/core/backend_guard.dart';

import '../domain/message.cg.dart';

part 'gen/message.cg.f.dart';
part 'gen/message.cg.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const factory MessageDto({
    dynamic id,
    String? uuid,
    dynamic timestamp,
    String? text,
    String? direction,
    String? to,
    String? attachment,
    ExtraDto? extra,
  }) = _MessageDto;

  /// конструктор
  const MessageDto._();

  /// используем фабричный конструктор
  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  /// Конвертер в домен.
  Message toDomain() {
    return Message(
      id: convertDynamic(id),
      uuid: uuid ?? '',
      direction: direction ?? '',
      timestamp: DateTime.fromMillisecondsSinceEpoch(
          (convertDynamic(timestamp)) * 1000),
      text: text ?? '',
      isOutgoing: (direction ?? '') == 'out',
      to: to ?? '0',
      attachment: attachment ?? '',
      extra: extra?.toDomain(),
    );
  }
}

@freezed
class ExtraDto with _$ExtraDto {
  const factory ExtraDto({
    String? buttons,
    String? chainId,
    dynamic scenarioStepId,
  }) = _ExtraDto;

  /// конструктор
  const ExtraDto._();
  factory ExtraDto.fromJson(Map<String, dynamic> json) =>
      _$ExtraDtoFromJson(json);

  /// Конвертер в домен.
  Extra toDomain() {
    return Extra(
      buttons: _decodeButtons(buttons ?? ''),
      chainId: chainId ?? '',
      scenarioStepId: BackendGuard.tryParseString(scenarioStepId) ?? '',
    );
  }
}

@freezed
class ButtonDto with _$ButtonDto {
  const factory ButtonDto({
    String? text,
    String? callbackData,
  }) = _ButtonDto;

  /// конструктор
  const ButtonDto._();

  factory ButtonDto.fromJson(Map<String, dynamic> json) =>
      _$ButtonDtoFromJson(json);

  /// Конвертер в домен.
  Button toDomain() {
    return Button(
      text: text ?? '',
      callbackData: callbackData ?? '',
    );
  }
}

List<Button> _decodeButtons(String raw) {
  if (raw.isEmpty) return [];
  final decoded = jsonDecode(raw) as List;
  final res = decoded
      .map((e) => Button.fromJson(Map<String, dynamic>.from(e)))
      .toList();

  return res;
}

int convertDynamic(dynamic value) {
  if (value is int) {
    return value;
  }
  if (value is String) {
    return int.tryParse(value) ?? 0;
  }
  return 0;
}
