import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// Геттер текущего времени.
DateTime get now => DateTime.now();

/// Helper для штатного debugModePrint,
/// Так как штатный, оказывается, не убирается в релизе.
void debugModePrint(String? message, {int? wrapWidth}) {
  if (!kReleaseMode) {
    debugPrint(message, wrapWidth: wrapWidth);
  }
}

/// Сокращатель для [Future.delayed] в миллисекундах.
Future<void> delayMs(int milliseconds) async {
  await Future<void>.delayed(Duration(milliseconds: milliseconds));
}

/// Сокращатель для [SchedulerBinding.addPostFrameCallback].
void addPostFrameCallback(VoidCallback callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}

/// Хелпер для расчета ширины текста
double findTextWidth({TextStyle? style, required String text}) {
  final t = TextPainter(
    text: TextSpan(
      text: text,
      style: style,
    ),
    maxLines: 1,
    textDirection: ui.TextDirection.ltr,
  )..layout();
  return t.width;
}
