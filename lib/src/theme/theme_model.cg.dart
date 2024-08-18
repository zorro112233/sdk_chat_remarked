import 'package:sdk_chat_remarked/src/theme/colors/dark_color_theme.dart';
import 'package:sdk_chat_remarked/src/theme/colors/light_color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/theme_model.cg.f.dart';

/// Модель текущей темы приложения
@freezed
class ThemeModel with _$ThemeModel {
  /// factory текущей темы приложения
  const factory ThemeModel({
    required ThemeData data,
    required ThemeMode mode,
    required SystemUiOverlayStyle systemUiOverlayStyle,
  }) = _ThemeModel;

  /// Светлая тема
  factory ThemeModel.light() => ThemeModel(
        data: LightColorTheme.data,
        mode: ThemeMode.light,
        systemUiOverlayStyle: LightColorTheme.systemUiOverlayStyle,
      );

  /// Темная тема
  factory ThemeModel.dark() => ThemeModel(
        data: DarkColorTheme.data,
        mode: ThemeMode.dark,
        systemUiOverlayStyle: DarkColorTheme.systemUiOverlayStyle,
      );
  const ThemeModel._();

  /// Является ли текущая тема темной
  bool get isDark => mode == ThemeMode.dark;
}
