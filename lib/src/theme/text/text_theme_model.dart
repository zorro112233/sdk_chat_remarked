import 'package:flutter/material.dart';

/// Набор текстовых стелей приложения.
///
abstract final class TextThemeModel {
  /// Тип основного шрифта
  static const String fontMain = 'Inter';

  /// bold24
  static const bold24 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 24,
    height: 24 / 24,
  );

  /// bold12
  static const bold12 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 14.52 / 12,
  );

  /// semiBold18
  static const semiBold18 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 18,
    height: 18 / 18,
  );

  /// semiBold16
  static const semiBold16 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 16,
    height: 16 / 16,
  );

  /// semiBold14
  static const semiBold14 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 14,
    height: 16.94 / 14,
  );

  /// semiBold12
  static const semiBold12 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 12 / 12,
  );

  /// semiBold11
  static const semiBold11 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 11,
    height: 13.31 / 11,
  );

  /// Medium25
  static const medium25 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 25,
    height: 30.26 / 25,
  );

  /// Medium16
  static const medium16 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 16,
    height: 16 / 16,
  );

  /// Medium14
  static const medium14 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 14,
    height: 14 / 14,
  );

  /// Medium12
  static const medium12 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 12 / 12,
  );

  /// Medium10
  static const medium10 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 10,
    height: 13 / 10,
  );

  /// Reqular14
  static const reqular14 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 14,
    height: 16.94 / 14,
  );

  /// Reqular12
  static const reqular12 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 12,
    height: 14.52 / 12,
  );

  /// Reqular11
  static const reqular11 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 11,
    height: 13.31 / 11,
  );

  /// Reqular10
  static const reqular10 = TextStyle(
    fontFamily: fontMain,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    fontSize: 10,
    height: 13 / 10,
  );
}
