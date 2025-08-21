import 'package:sdk_chat_remarked/src/core/consts.dart';
import 'package:sdk_chat_remarked/src/core/inapp_logger.dart';

/// Набор функций для работы с хаотическим бэкендом (как правило PHP-way).
///
/// Не секрет, что заменить инты на строки, строки на булы
/// им запросто, а нам тут все ломает на входе.
///
/// Методы предназначены для возможного учета возможных вариантов,
/// которые мы пытаемся привести уже к порядочным типам.
class BackendGuard {
  BackendGuard._();

  /// <b>Попытка преобразовать в bool все возможные фокусы PHP</b></p>.
  ///
  /// Ребята там играются, меняя инты на строки, строки на булы,
  /// предполагая что весь мир прогнется под них</p>.
  ///
  /// <b>Пытаемся позвать санитаров:</b>
  ///
  /// - Если на входе null - возвращаем null
  /// - Если получилось bool - возвращаем его
  /// - Если получилось int - возвращаем значение аргумента отнсительно нуля
  /// - Если получилось double - возвращаем значение аргумента отнсительно нуля
  /// - Если получилось String - соответствие с "true" или "1"
  /// - Если ничего не получилось - возвращаем null и пишем в лог.
  ///
  /// [context] - контекст для логов - функция, класс, название переменной.
  static bool? tryParseBool(
    dynamic value, {
    String context = ' ... ',
    bool showWarning = false,
  }) {
    if (value == null) {
      return null;
    }

    if (value is bool) {
      return value;
    }

    if (showWarning) {
      logWarning(
        '‼️BackendChaos.tryParseBool for $context',
        'value `$value` not bool, but ${value.runtimeType}, try to parse it',
      );
    }

    if (value is int) {
      return value > 0;
    }

    if (value is double) {
      return value > 0;
    }

    if (value is String) {
      if (value == 'true' || value == '1') {
        return true;
      } else {
        return false;
      }
    }

    InAppLogger.instance.logError(
      '‼️BackendChaos.tryParseBool for $context',
      'value was $value, but it was not bool, int, double or string',
    );

    return null;
  }

  /// <b>Попытка преобразовать в int все возможные фокусы PHP</b></p>.
  ///
  /// Ребята там играются, меняя инты на строки, строки на булы,
  /// предполагая что весь мир прогнется под них</p>.
  ///
  /// <b>Пытаемся позвать санитаров:</b>
  ///
  /// - Если на входе null - возвращаем null
  /// - Если получилось int - возвращаем его
  /// - Если получилось double - возвращаем double.toInt()
  /// - Если получилось String - int.tryParse()
  /// - Если получилось bool (да, и такое бывает) -
  ///     false=Consts.invalidInt, true=0
  /// - Если ничего не получилось - возвращаем null и пишем в лог.
  ///
  /// [context] - контекст для логов - функция, класс, название переменной.
  static int? tryParseInt(
    dynamic value, {
    String context = ' ... ',
    bool showWarning = false,
  }) {
    if (value == null) {
      return null;
    }

    if (value is int) {
      return value;
    }

    if (showWarning) {
      InAppLogger.instance.logWarning(
        '‼️BackendChaos.tryParseInt for $context',
        'value `$value` not int, but ${value.runtimeType}, try to parse it',
      );
    }

    if (value is double) {
      return value.toInt();
    }

    if (value is String) {
      return int.tryParse(value);
    }

    if (value is bool) {
      return value ? 0 : Consts.invalidIntValue;
    }

    InAppLogger.instance.logError(
      '‼️BackendChaos.tryParseInt for $context',
      'value was $value, but it was not int, double or string',
    );

    return null;
  }

  /// <b>Попытка преобразовать в double все возможные фокусы PHP</b></p>.
  ///
  /// Ребята там играются, меняя инты на строки, строки на булы,
  /// предполагая что весь мир прогнется под них</p>.
  ///
  /// <b>Пытаемся позвать санитаров:</b>
  ///
  /// - Если на входе null - возвращаем null
  /// - Если получилось double - возвращаем его
  /// - Если получилось int - возвращаем int.toDouble()
  /// - Если получилось String - double.tryParse()
  /// - Если ничего не получилось - возвращаем null и пишем в лог.
  ///
  /// [context] - контекст для логов - функция, класс, название переменной.
  static double? tryParseDouble(
    dynamic value, {
    String context = ' ... ',
    bool showWarning = false,
  }) {
    if (value == null) {
      return null;
    }

    if (value is double) {
      return value;
    }

    if (showWarning) {
      InAppLogger.instance.logWarning(
        '‼️BackendChaos.tryParseDouble for $context',
        'value `$value` not double, but ${value.runtimeType}, try to parse it',
      );
    }

    if (value is int) {
      return value.toDouble();
    }

    if (value is String) {
      return double.tryParse(value);
    }

    InAppLogger.instance.logError(
      '‼️BackendChaos.tryParseDouble for $context',
      'value was $value, but it was not  double, int or string',
    );

    return null;
  }

  /// <b>Попытка преобразовать в String все возможные фокусы PHP</b></p>.
  ///
  /// Ребята там играются, меняя инты на строки, строки на булы,
  /// предполагая что весь мир прогнется под них</p>.
  ///
  /// <b>Пытаемся позвать санитаров:</b>
  ///
  /// - Если на входе null - возвращаем null
  /// - Если получилось double - возвращаем его double.toString()
  /// - Если получилось int - возвращаем int.toString()
  /// - Если получилось String - возвращаем его
  /// - Если ничего не получилось - возвращаем null и пишем в лог.
  ///
  /// [context] - контекст для логов - функция, класс, название переменной.
  static String? tryParseString(
    dynamic value, {
    String context = ' ... ',
    bool showWarning = false,
  }) {
    if (value == null) {
      return null;
    }

    if (value is String) {
      return value;
    }

    if (showWarning) {
      InAppLogger.instance.logWarning(
        '‼️BackendChaos.tryParseDouble for $context',
        'value `$value` not double, but ${value.runtimeType}, try to parse it',
      );
    }

    if (value is int || value is double) {
      return value.toString();
    }

    InAppLogger.instance.logError(
      '‼️BackendChaos.tryParseString for $context',
      'value was $value, but it was not  double, int or string',
    );

    return null;
  }

  /// Назрела необходимость парсить мапы.
  /// Бэк с завидным постоянством возвращает нам вместо пустого объекта
  /// пустой массив.
  ///
  /// Это не вылечится пока бэкендеры не научатся в гарды, то есть никогда.
  ///
  /// [showWarning] по умолчанию true, так как это серьезный косяк,
  ///   и ошибка должна отображаться.
  static Map<String, dynamic>? tryParseMap<K, V>(
    dynamic value, {
    String context = ' ... ',
    bool showWarning = true,
  }) {
    if (value == null) {
      return null;
    }

    if (value is Map<String, dynamic>) {
      return value;
    }

    if (showWarning) {
      InAppLogger.instance.logWarning(
        '‼️ BackendChaos.tryParseMap for $context',
        'value `$value` not Map, but ${value.runtimeType}, try to parse it',
      );
    }

    if (value is List<dynamic> && value.isEmpty) {
      return {};
    }

    if (value is String) {
      return {};
    }

    InAppLogger.instance.logError(
      '‼️BackendChaos.tryParseMap for $context',
      'value was $value, but it was not empty List or string',
    );

    return null;
  }
}
