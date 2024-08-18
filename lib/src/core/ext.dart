import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'consts.dart';
import 'utils.dart';

/// Расширения для String?
extension StringEx on String? {
  /// Безопасный перевод даты из текста в домен
  DateTime tryParseToDateTime() {
    return DateTime.tryParse(this ?? '') ?? Consts.invalidDateTime;
  }
}

/// Расширения для int?
extension IntExt on int? {
  /// int? => bool? подразумевая что любое значение > 0 дает true
  bool? get toBoolOrNull => this != null ? this! > 0 : null;
}

/// Расширения на String
extension StringX on String {
  /// Просто удобный маркер для быстрого поиска в коде нелокализованных строк.
  /// Возвращает текущую строку.
  String get hardcoded => this;

  /// Ограничение на максимальную длину
  String maxLen(int max) {
    assert(max > -1, 'maxLen Cant be negative');
    return length < max ? this : substring(0, max);
  }

  /// Эта функция принимает один аргумент partLength и возвращает часть строки.
  /// В первую очередь, происходит проверка с помощью выражения assert, что
  /// значение partLength не отрицательно. Если partLength равен нулю, то
  /// функция возвращает текущую строку.
  /// Если partLength * 2 >= length (длина части больше или равна половине
  /// длины строки), то также возвращается текущая строка.
  /// В противном случае, функция возвращает часть строки с начала и конца,
  /// которые равны partLength. Возвращаемая часть выглядит как "$start..$end".
  String safePart(int partLength) {
    assert(partLength > -1, 'maxLen Cant be negative');
    if (partLength == 0) {
      return this;
    }
    if (partLength * 2 >= length) {
      return this;
    }
    final start = substring(0, partLength);
    final end = substring(length - partLength, length);
    return '$start..$end';
  }

  /// DateTime из String с обработкой Exception (возвращается DateTime.now)
  /// Формат yyyy-MM-dd
  DateTime get dateTimeFromBackend {
    try {
      return DateFormat('yyyy-MM-dd').parse(this);
    } on Exception catch (_) {
      return now;
    }
  }

  /// DateTime из String с обработкой Exception (возвращается DateTime.now)
  /// Формат yyyy-MM-dd HH:mm:ss
  DateTime get dateTimeWithTimeFromBackend {
    try {
      return DateFormat('yyyy-MM-dd HH:mm:ss').parse('');
    } on Exception catch (_) {
      return now;
    }
  }

  /// Превращаем DateTime в строку yyyy-MM-dd
  String get convertDateTimeYYYYMMDD {
    if (isEmpty) return '';
    // Преобразование строки в DateTime
    final parts = split('-');
    final formattedDate = '${parts[2]}.${parts[1]}.${parts[0]}';
    return formattedDate;
  }

  /// Первая буква в верхнем регистре
  String get toCapitalize =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  /// Получить первые буквы
  String get extractFirstLetter {
    // Разбиваем строку на слова
    final words = trim().split(' ');

    // Создаем переменную для хранения первых букв
    final buffer = StringBuffer();
    if (words.isNotEmpty) {
      // Итерируемся по каждому слову
      for (final word in words) {
        if (word.isNotEmpty) {
          // Добавляем первую букву каждого слова к результату
          buffer.write(word[0]);
        }
      }
    }

    return buffer.toString();
  }

  /// Конвертирует строку в цвет
  Color hexStringToColor() {
    if (isEmpty) return Colors.black;
    final fix = split('#').last;
    final res = Color(int.parse(fix.substring(0, 6), radix: 16) + 0xFF000000);
    return res;
  }
}

/// Расширения на String?
extension DateTimeTryParseX on String? {
  /// DateTime из String с обработкой null
  DateTime get tryParseToDateTime {
    return DateTime.tryParse(this ?? '') ?? Consts.invalidDateTime;
  }
}

/// Расширения на num
extension EdgeInsetsX on num {
  /// Превращаем число в EdgeInsets.symmetric c horizontal
  EdgeInsets get insetsHor => EdgeInsets.symmetric(horizontal: this * 1.0);

  /// Превращаем число в EdgeInsets.symmetric c vertical
  EdgeInsets get insetsVert => EdgeInsets.symmetric(vertical: this * 1.0);

  /// Превращаем число в EdgeInsets.all
  EdgeInsets get insetsAll => EdgeInsets.all(this * 1.0);

  /// Без адаптивности
  SizedBox get sbHeight => SizedBox(height: toDouble());

  /// Без адаптивности
  SizedBox get sbWidth => SizedBox(width: toDouble());
}

/// Расширения для [TextEditingController]
extension TextEditingControllerX on TextEditingController {
  /// Устанавливает текст и одновременно позиционирует курсор в конец.
  ///
  /// ```dart
  ///  someTextController.withText(value);
  /// ```
  TextEditingController adjust(String text) {
    this.text = text;
    selection = TextSelection.collapsed(offset: text.length);
    return this;
  }
}

/// Расширения на DateTime
extension DateTimeX on DateTime {
  /// Превращаем DateTime в строку dd-MM-yyyy HH:mm
  String get stringFromDateWithTime {
    try {
      return DateFormat('dd.MM.yyyy HH:mm').format(this);
    } on Exception catch (_) {
      return '';
    }
  }

  /// Превращаем DateTime в строку dd-MM-yyyy
  String get stringFromDateTime {
    try {
      return DateFormat('dd.MM.yyyy').format(this);
    } on Exception catch (_) {
      return '';
    }
  }

  /// Превращаем DateTime в строку dd.MM.yy
  String get formatDateTimeShort {
    try {
      return DateFormat('dd.MM.yyyy').format(this);
    } on Exception catch (_) {
      return '';
    }
  }

  /// Превращаем Times в строку dd.MM.yy
  String get formatDateTimeToTimes {
    try {
      return DateFormat('HH:mm').format(this);
    } on Exception catch (_) {
      return '';
    }
  }

  /// Возвращает DateTime с округленным минутный час
  DateTime get roundMin => DateTime(year, month, day, hour, () {
        if (minute <= 15) {
          return 0;
        } else if (minute > 15 && minute <= 45) {
          return 30;
        } else {
          // В данном случае, возвращаем 60 минут,
          // что соответствует началу следующего часа
          return 60;
        }
      }());

  /// Проверка, является ли DateTime Consts.invalidDateTime
  bool get isValid {
    return this != Consts.invalidDateTime;
  }

  /// Превращаем DateTime в строку dd/MM/yyyy HH:mm
  String convertDateTimeForUi() {
    if (this == Consts.invalidDateTime) return '';
    return DateFormat('dd/MM/yyyy HH:mm').format(this);
  }
}

/// Расширения на int?
extension DateTimeParseEpochX on int? {
  /// Добываем DateTime через DateTime.fromMillisecondsSinceEpoch
  DateTime get parseToLocalDateTime {
    return DateTime.fromMillisecondsSinceEpoch((this ?? 0) * 1000).toLocal();
  }

  /// Конверт в строку длиной минимум 2 символа
  String get doubleDigitsHour {
    return this == null
        ? '-1'
        : (this ?? 0) < 10
            ? '0$this'
            : toString();
  }
}
