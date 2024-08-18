import 'package:sdk_chat_remarked/src/core/consts.dart';
import 'package:flutter/material.dart';

/// Тут живут ссылки на все иконки и изображения, которые мы загружаем в assets
class AppIcons {
  static const String rootPath = 'lib/assets/images';
  static const String chat = '$rootPath/chat.png';
  static const String arrowLeftIcon = '$rootPath/arrow-left.png';
  static const String readedIcon = '$rootPath/readed.png';

  static Widget arrowLeft({
    double? width,
    double? height,
    Color? color,
  }) {
    return icon(
      arrowLeftIcon,
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget icon(
    String path, {
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return Image.asset(
      path,
      width: width ?? Consts.iconSize,
      height: height ?? Consts.iconSize,
      color: color,
      fit: fit,
      // Этот фильтр обеспечивает лучшее качество, чем high при downscale
      // и лучшее качество, чем low при upscale
      filterQuality: FilterQuality.medium,
    );
  }
}
