import 'package:sdk_chat_remarked/src/theme/text/text_theme_model.dart';
import 'package:flutter/material.dart';

import 'colors/dark_color_theme.dart';
import 'colors/light_color_theme.dart';

var _isDark = false;

/// Стили текста приложения
class AppStyles {
  static const Color _textColorDark = DarkColorTheme.darkViolet;
  static const Color _textColorLight = LightColorTheme.darkViolet;

  /// главный шрифт
  static const String fontMain = TextThemeModel.fontMain;

  ///
  static TextStyle get bold24 => TextThemeModel.bold24
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get bold12 => TextThemeModel.bold12
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get semiBold18 => TextThemeModel.semiBold18
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get semiBold16 => TextThemeModel.semiBold16
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get semiBold14 => TextThemeModel.semiBold14
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get semiBold12 => TextThemeModel.semiBold12
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get semiBold11 => TextThemeModel.semiBold11
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get medium25 => TextThemeModel.medium25
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get medium16 => TextThemeModel.medium16
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get medium14 => TextThemeModel.medium14
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get medium12 => TextThemeModel.medium12
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get medium10 => TextThemeModel.medium10
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get reqular14 => TextThemeModel.reqular14
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get reqular12 => TextThemeModel.reqular12
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get reqular11 => TextThemeModel.reqular11
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);

  ///
  static TextStyle get reqular10 => TextThemeModel.reqular10
      .copyWith(color: _isDark ? _textColorDark : _textColorLight);
}

/// Библиотека цветов приложения
abstract class AppColors {
  /// transparent
  static Color get transparent => Colors.transparent;

  /// transparent
  static Color get error => const Color(0xFFFA0001);

  ///
  static Color get bgMain =>
      _isDark ? DarkColorTheme.bgMain : LightColorTheme.bgMain;

  ///
  static Color get bgWhite =>
      _isDark ? DarkColorTheme.bgWhite : LightColorTheme.bgWhite;

  ///
  static Color get bgOpacity =>
      _isDark ? DarkColorTheme.bgOpacity : LightColorTheme.bgOpacity;

  ///
  static Color get black =>
      _isDark ? DarkColorTheme.black : LightColorTheme.black;

  ///
  static Color get white =>
      _isDark ? DarkColorTheme.white : LightColorTheme.white;

  ///
  static Color get paleVioletTxt =>
      _isDark ? DarkColorTheme.paleVioletTxt : LightColorTheme.paleVioletTxt;

  ///
  static Color get darkViolet =>
      _isDark ? DarkColorTheme.darkViolet : LightColorTheme.darkViolet;

  ///
  static Color get red => _isDark ? DarkColorTheme.red : LightColorTheme.red;

  ///
  static Color get redLight =>
      _isDark ? DarkColorTheme.redLight : LightColorTheme.redLight;

  ///
  static Color get grayBtn =>
      _isDark ? DarkColorTheme.grayBtn : LightColorTheme.grayBtn;

  ///
  static Color get strokeViolet =>
      _isDark ? DarkColorTheme.strokeViolet : LightColorTheme.strokeViolet;

  ///
  static Color get shadow =>
      _isDark ? DarkColorTheme.shadow : LightColorTheme.shadow;

  ///
  static Color get shadowAppBar =>
      _isDark ? DarkColorTheme.shadowAppBar : LightColorTheme.shadowAppBar;

  ///
  static Color get pink => _isDark ? DarkColorTheme.pink : LightColorTheme.pink;

  ///
  static Color get green =>
      _isDark ? DarkColorTheme.green : LightColorTheme.green;

  ///
  static Color get yellowStar =>
      _isDark ? DarkColorTheme.yellowStar : LightColorTheme.yellowStar;

  ///
  static Color get transparentButton => _isDark
      ? DarkColorTheme.transparentButton
      : LightColorTheme.transparentButton;

  ///
  static List<BoxShadow> get pinkShadows =>
      _isDark ? DarkColorTheme.pinkShadows : LightColorTheme.pinkShadows;

  ///
  static List<BoxShadow> get inputShadow =>
      _isDark ? DarkColorTheme.inputShadow : LightColorTheme.inputShadow;

  ///
  static List<BoxShadow> get dropShadow =>
      _isDark ? DarkColorTheme.dropShadow : LightColorTheme.dropShadow;

  ///
  static List<BoxShadow> get centerShadow =>
      _isDark ? DarkColorTheme.centerShadow : LightColorTheme.centerShadow;

  ///
  static List<BoxShadow> get dropShadowAppBar => _isDark
      ? DarkColorTheme.dropShadowAppBar
      : LightColorTheme.dropShadowAppBar;

  ///
  static List<BoxShadow> get cardShadowUp =>
      _isDark ? DarkColorTheme.cardShadowUp : LightColorTheme.cardShadowUp;

  ///
  static List<Color> get gradient =>
      _isDark ? DarkColorTheme.gradient : LightColorTheme.gradient;
}
