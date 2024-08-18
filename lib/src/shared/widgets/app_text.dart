// ignore_for_file: public_member_api_docs
import 'dart:ui' as ui show TextHeightBehavior;
import 'package:sdk_chat_remarked/src/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension AppTextX on AppTextType {
  /// Выбор стиля текста на основании данных AppTextType
  TextStyle withColor({Color? color}) => switch (this) {
        AppTextType.bold24 => AppStyles.bold24.copyWith(color: color),
        AppTextType.bold12 => AppStyles.bold12.copyWith(color: color),
        AppTextType.semiBold18 => AppStyles.semiBold18.copyWith(color: color),
        AppTextType.semiBold16 => AppStyles.semiBold16.copyWith(color: color),
        AppTextType.semiBold14 => AppStyles.semiBold14.copyWith(color: color),
        AppTextType.semiBold12 => AppStyles.semiBold12.copyWith(color: color),
        AppTextType.semiBold11 => AppStyles.semiBold11.copyWith(color: color),
        AppTextType.medium25 => AppStyles.medium25.copyWith(color: color),
        AppTextType.medium16 => AppStyles.medium16.copyWith(color: color),
        AppTextType.medium14 => AppStyles.medium14.copyWith(color: color),
        AppTextType.medium12 => AppStyles.medium12.copyWith(color: color),
        AppTextType.medium10 => AppStyles.medium10.copyWith(color: color),
        AppTextType.reqular14 => AppStyles.reqular14.copyWith(color: color),
        AppTextType.reqular12 => AppStyles.reqular12.copyWith(color: color),
        AppTextType.reqular11 => AppStyles.reqular11.copyWith(color: color),
        AppTextType.reqular10 => AppStyles.reqular10.copyWith(color: color),
      };
}

/// Все типы текста
enum AppTextType {
  bold24,
  bold12,
  semiBold18,
  semiBold16,
  semiBold14,
  semiBold12,
  semiBold11,
  medium25,
  medium16,
  medium14,
  medium12,
  medium10,
  reqular14,
  reqular12,
  reqular11,
  reqular10,
}

/// Основной виджет для текста
class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    this.style,
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  });

  /// [AppTextType.bold24]
  AppText.bold24(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.bold24.withColor(color: color);

  /// [AppTextType.semiBold18]
  AppText.semiBold18(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.semiBold18.withColor(color: color);

  /// [AppTextType.semiBold16]
  AppText.semiBold16(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.semiBold16.withColor(color: color);

  /// [AppTextType.semiBold14]
  AppText.semiBold14(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.semiBold14.withColor(color: color);

  /// [AppTextType.semiBold12]
  AppText.semiBold12(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.semiBold12.withColor(color: color);

  /// [AppTextType.semiBold11]
  AppText.semiBold11(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.semiBold11.withColor(color: color);

  /// [AppTextType.medium25]
  AppText.medium25(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.medium25.withColor(color: color);

  /// [AppTextType.medium16]
  AppText.medium16(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.medium16.withColor(color: color);

  /// [AppTextType.medium14]
  AppText.medium14(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.medium14.withColor(color: color);

  /// [AppTextType.medium12]
  AppText.medium12(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.medium12.withColor(color: color);

  /// [AppTextType.medium10]
  AppText.medium10(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.medium10.withColor(color: color);

  /// [AppTextType.reqular14]
  AppText.reqular14(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.reqular14.withColor(color: color);

  /// [AppTextType.reqular12]
  AppText.reqular12(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.reqular12.withColor(color: color);

  /// [AppTextType.reqular11]
  AppText.reqular11(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.reqular11.withColor(color: color);

  /// [AppTextType.reqular10]
  AppText.reqular10(
    this.text, {
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    super.key,
  }) : style = AppTextType.reqular10.withColor(color: color);

  final String? text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final ui.TextHeightBehavior? textHeightBehavior;

  @override
  Widget build(BuildContext context) {
    // при изменении масштаба текста на iOS вылезал overflow.
    // по согласованию с ПМ зафризили.
    final tsf = (textScaleFactor ?? 1.0) > 1.0 ? 1.0 : 1.0;

    return Text(
      text ?? '',
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: TextScaler.linear(tsf),
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
