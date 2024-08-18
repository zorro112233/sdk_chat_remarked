// ignore_for_file: public_member_api_docs

import 'package:sdk_chat_remarked/src/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Класс темной темы для цветов
abstract final class DarkColorTheme {
  static const bgMain = Color(0xFFF8F9FC);
  static const bgWhite = Color(0xFFFDFDFE);
  static const bgOpacity = Color.fromRGBO(248, 249, 252, .98);
  static const black = Color(0xFF1C1C1C);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFFA0001);
  static const redLight = Color(0xFFFD5252);
  static const darkViolet = Color(0xFF473D54);
  static const paleVioletTxt = Color(0xFFACA8B8);
  static const grayBtn = Color.fromRGBO(33, 33, 33, .5);
  static const strokeViolet = Color.fromRGBO(175, 167, 189, .15);
  static const shadow = Color(0xFFA1B9CF);
  static const shadowAppBar = Color(0xFF4E4E4E);
  static const shadowUp = Color(0xFFB5A6BA);
  static const pink = Color(0xFFFFCDCD);
  static const pinkShadow = Color(0xFFCFA4A1);
  static const green = Color(0xFF09A805);
  static const yellowStar = Color(0xFFFFC738);
  static const transparentButton = Color.fromRGBO(172, 172, 172, .15);

  static final inputShadow = [
    BoxShadow(
      blurRadius: 6,
      offset: const Offset(0, 23),
      color: shadow.withOpacity(.03),
    ),
    BoxShadow(
      blurRadius: 8,
      offset: const Offset(0, 41),
      color: shadow.withOpacity(.01),
    ),
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, 64),
      color: shadow.withOpacity(0),
    ),
    const BoxShadow(
      blurRadius: 10,
      offset: Offset(0.5, 0.5),
      color: white,
    ),
  ];

  static final centerShadow = [
    BoxShadow(
      blurRadius: 7,
      color: shadowUp.withOpacity(.05),
    ),
    BoxShadow(
      blurRadius: 13,
      color: shadowUp.withOpacity(.04),
    ),
    BoxShadow(
      blurRadius: 17,
      color: shadowUp.withOpacity(0.03),
    ),
    BoxShadow(
      blurRadius: 20,
      color: shadowUp.withOpacity(0.01),
    ),
    BoxShadow(
      blurRadius: 22,
      color: shadowUp.withOpacity(0),
    ),
  ];
  static final dropShadow = [
    BoxShadow(
      blurRadius: 6,
      offset: const Offset(0, 3),
      color: shadow.withOpacity(.05),
    ),
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, 10),
      color: shadow.withOpacity(.04),
    ),
    BoxShadow(
      blurRadius: 13,
      offset: const Offset(0, 23),
      color: shadow.withOpacity(0.03),
    ),
    BoxShadow(
      blurRadius: 16,
      offset: const Offset(0, 41),
      color: shadow.withOpacity(0.01),
    ),
    BoxShadow(
      blurRadius: 18,
      offset: const Offset(0, 64),
      color: shadow.withOpacity(0),
    ),
  ];

  static final dropShadowAppBar = [
    BoxShadow(
      blurRadius: 10,
      color: shadowAppBar.withOpacity(.05),
    ),
  ];

  static final cardShadowUp = [
    BoxShadow(
      blurRadius: 7,
      offset: const Offset(0, -3),
      color: shadowUp.withOpacity(.05),
    ),
    BoxShadow(
      blurRadius: 13,
      offset: const Offset(0, -13),
      color: shadowUp.withOpacity(.04),
    ),
    BoxShadow(
      blurRadius: 17,
      offset: const Offset(0, -28),
      color: shadowUp.withOpacity(0.03),
    ),
    BoxShadow(
      blurRadius: 20,
      offset: const Offset(0, -51),
      color: shadowUp.withOpacity(0.01),
    ),
    BoxShadow(
      blurRadius: 22,
      offset: const Offset(0, -79),
      color: shadowUp.withOpacity(0),
    ),
  ];

  static final pinkShadows = [
    BoxShadow(
      blurRadius: 6,
      offset: const Offset(0, -3),
      color: pinkShadow.withOpacity(.05),
    ),
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, -10),
      color: pinkShadow.withOpacity(.04),
    ),
    BoxShadow(
      blurRadius: 14,
      offset: const Offset(0, -23),
      color: pinkShadow.withOpacity(0.03),
    ),
    BoxShadow(
      blurRadius: 16,
      offset: const Offset(0, -41),
      color: pinkShadow.withOpacity(0.01),
    ),
    BoxShadow(
      blurRadius: 18,
      offset: const Offset(0, -64),
      color: pinkShadow.withOpacity(0),
    ),
  ];

  static const gradient = [
    Color(0xFFFFA766),
    Color(0xFFFF5684),
  ];

  static final systemUiOverlayStyle = SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  static final data = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // Пока выключаем. Слишком красиво. На самом деле, потому что в сплэш
    // начали замешиваться дополнительные цвета. Для работы же с Material2
    // достаточно переназначить overlayColor для анимации кнопок при нажатии
    // useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.black,
      brightness: Brightness.dark,
    ),
  );
}
