import 'dart:developer' as developer;

import 'package:logging/logging.dart';
import 'ext.dart';

const _maxLength = 100000;
const Level _minimumLogLevel = Level.INFO;

/// Сокращенная версия InAppLogger.instance.logInfoMessage
void logInfo(String method, Object line) => InAppLogger.instance.logInfoMessage(
      method,
      line,
    );

/// Сокращенная версия InAppLogger.instance.logWarning
void logWarning(String method, Object line) => InAppLogger.instance.logWarning(
      method,
      line,
    );

/// Сокращенная версия InAppLogger.instance.logError
void logError(String method, Object line) => InAppLogger.instance.logError(
      method,
      line,
    );

/// Сокращенная версия InAppLogger.instance.logCriticalError
void logCriticalError(String method, Object line) =>
    InAppLogger.instance.logCriticalError(
      method,
      line,
    );

/// Класс для показа лога внутри приложения
/// Сбрасывается после перезапуска приложения
/// Все новые события также выводятся в консоль
final class InAppLogger {
  InAppLogger._();

  /// Синглтон InAppLogger
  static final InAppLogger instance = InAppLogger._();

  final _log = StringBuffer();

  /// Добавить новую строку в лог и консоль
  void _addToLog({
    required String method,
    required Object line,
    Level level = Level.INFO,
  }) {
    if (level >= _minimumLogLevel) {
      // Ограничим длину лога 100 000 символов и при переполнении будем
      // оставлять только свежие данные (последние 90 000 символов)
      if (_log.length > _maxLength) {
        // Чтобы лог не обрывался посередине строки, найдем начало строки, до
        // которой будем обрезать лог
        final pos = _log.toString().indexOf(
              RegExp(r'\[\d+:\d+:\d+] \['),
              (_maxLength * 0.1).toInt(),
            );
        final savedPart = _log.toString().substring(pos, _maxLength);
        _log
          ..clear()
          ..write(savedPart);
      }

      final now = DateTime.now();
      final datetime =
          '${_toDoubleDigits(now.hour)}:${_toDoubleDigits(now.minute)}:'
          '${_toDoubleDigits(now.second)}';
      _log
        ..write('[$datetime] [$method] ${_getLogSymbol(level)}')
        // ограничим длину одного логируемого сообщения
        ..writeln(line.toString().maxLen(30000));
      // рефреш тут не делаем, тк может оказаться, что мы не в дереве
      developer.log(
        '${_getLogSymbol(level)} $line',
        name: '$datetime] [$method',
        level: level.value,
      );
    }
  }

  /// Получить текущее значение лога
  String get getLog => _log.toString();

  /// Очистить лог
  void cleanLog() => _log.clear();

  /// Сохраняем обычное информационное сообщение без префикса
  void logInfoMessage(String method, Object line) =>
      _addToLog(method: method, line: line);

  /// Сохраняем предупреждение - чтото пошло не так но защита сработала
  /// (например дто в required поле поставило значение по умолчанию)
  void logWarning(String method, Object line) =>
      _addToLog(method: method, line: line, level: Level.WARNING);

  /// Ошибка - чтото пошло не так
  void logError(String method, Object line) =>
      _addToLog(method: method, line: line, level: Level.SEVERE);

  /// Случилось что-то ужасное, что существенно влияет на работоспособность
  /// приложения
  void logCriticalError(String method, Object line) =>
      _addToLog(method: method, line: line, level: Level.SHOUT);
}

String _toDoubleDigits(int v) {
  if (v < 10) {
    return '0$v';
  } else {
    return v.toString();
  }
}

String _getLogSymbol(Level level) {
  switch (level) {
    case Level.WARNING: // WARNING
      return '❕';
    case Level.SEVERE: // SEVERE
      return '❗️';
    case Level.SHOUT: // SHOUT
      return '❗❗❗';
    default:
      return '';
  }
}
