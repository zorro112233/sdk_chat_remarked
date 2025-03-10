import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

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

/// From GetX package
/// This "function" class is the implementation of `debouncer()` Worker.
/// It calls the function passed after specified [delay] parameter.
/// Example:
/// ```dart
/// final delayed = Debouncer( delay: Duration( seconds: 1 )) ;
/// print( 'the next function will be called after 1 sec' );
/// delayed( () => print( 'called after 1 sec' ));
/// ```

class Debouncer {
  // ignore: public_member_api_docs
  Debouncer({this.delay});

  /// Задержка отработки
  final Duration? delay;
  Timer? _timer;

  /// Какие действия мы выполняем после истечения задержки
  void call(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay!, action);
  }

  /// Notifies if the delayed call is active.
  bool get isRunning => _timer?.isActive ?? false;

  /// Cancel the current delayed call.
  void cancel() => _timer?.cancel();
}

Image base64ToImage(String base64String) {
  // Декодируем base64 строку в байты
  Uint8List decodedBytes = base64Decode(base64String);

  // Преобразуем байты в Image
  return Image.memory(decodedBytes);
}

// Пример использования image_picker для выбора изображения и конвертации его в base64
Future<({String base64image, String imagePath})> pickImageToBase64() async {
  final picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    // Читаем изображение как байты
    File imageFile = File(image.path);
    Uint8List imageBytes = await imageFile.readAsBytes();

    // Сжатие изображения
    final compressedImageData = await FlutterImageCompress.compressWithList(
      imageBytes,
      format: CompressFormat.png,
      minWidth: 500,
      quality: 70,
    );

    // Преобразуем байты в base64
    String base64String = base64Encode(compressedImageData);
    return (base64image: base64String, imagePath: imageFile.path);
  } else {
    throw Exception("Изображение не выбрано");
  }
}

Future<File> downloadAndCompressImage(String url) async {
  final filename = path.basename(url);
  final tempDir = await getTemporaryDirectory();
  final tempFile = File('${tempDir.path}/$filename');

  // Проверка, существует ли файл
  if (await tempFile.exists()) {
    return tempFile;
  }

  // Скачивание изображения
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final imageData = response.bodyBytes;

    // Сжатие изображения
    final Uint8List compressedImageData =
        await FlutterImageCompress.compressWithList(
      imageData,
      format: CompressFormat.png,
      minWidth: 600,
      quality: 70,
    );

    // Сохранение сжатого изображения в кэш
    await tempFile.writeAsBytes(compressedImageData);
    return tempFile;
  } else {
    throw Exception('Failed to download image');
  }
}
