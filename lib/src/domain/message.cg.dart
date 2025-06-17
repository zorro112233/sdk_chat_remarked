import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/consts.dart';

part 'gen/message.cg.f.dart';
part 'gen/message.cg.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String to,
    required String text,
    required String direction,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    required DateTime timestamp,
    required String uuid,
    required int id,
    Extra? extra,
    required String attachment,
    required bool isOutgoing,
  }) = _Message;

  /// Заглушка
  static final empty = Message(
    id: -1,
    uuid: '',
    timestamp: Consts.invalidDateTime,
    text: '',
    isOutgoing: false,
    to: '',
    attachment: '',
    direction: '',
  );
}

@freezed
class Extra with _$Extra {
  const factory Extra({
    @JsonKey(fromJson: _decodeButtons, toJson: _encodeButtons)
    required List<Button> buttons,
    @Deprecated('Заменен на scenario_step_id') required String chainId,
    required String scenarioStepId,
  }) = _Extra;
}

@freezed
class Button with _$Button {
  const factory Button({
    required String text,
    required String callbackData,
  }) = _Button;

  /// используем фабричный конструктор
  factory Button.fromJson(Map<String, dynamic> json) => _$ButtonFromJson(json);
}

// Helpers

DateTime _fromTimestamp(dynamic ts) =>
    DateTime.fromMillisecondsSinceEpoch(int.parse(ts.toString()) * 1000);

String _toTimestamp(DateTime dt) =>
    (dt.millisecondsSinceEpoch ~/ 1000).toString();

List<Button> _decodeButtons(String raw) {
  final decoded = jsonDecode(raw) as List;
  return decoded
      .map((e) => Button.fromJson(Map<String, dynamic>.from(e)))
      .toList();
}

String _encodeButtons(List<Button> buttons) {
  final encoded = buttons.map((e) => e.toJson()).toList();
  return jsonEncode(encoded);
}
