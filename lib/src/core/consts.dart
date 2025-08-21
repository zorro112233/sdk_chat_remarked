import 'package:flutter/material.dart';

/// Константы живут тут
class Consts {
  /// int 100
  static const delayMill100 = 100;

  /// int 250
  static const humanFriendlyDelay = 250;

  /// int 2000
  static const exitTimeInMillis = 2000;

  /// double borderRadius20
  static const borderRadius20 = Radius.circular(20);
  static const borderRadius44 = BorderRadius.all(Radius.circular(44));

  /// Решено делать такую инвалидную дату.
  static final DateTime invalidDateTime = DateTime(1900);

  /// default icon size
  static const iconSize = 24.0;

  /// Ошибочное значение -1 int
  static const invalidIntValue = -1;

  /// Ошибочное значение -1 double
  static const invalidDoubleValue = -1.0;
}
