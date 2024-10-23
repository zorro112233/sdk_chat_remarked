import 'package:flutter/material.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/cache_image.dart';

/// Изображение с загрузкой из интернета
/// [pathImg] - должно быть ссылкой на файл в интернет
class ImgNetwork extends StatelessWidget {
  /// Констрктор
  const ImgNetwork({
    required this.pathImg,
    super.key,
    this.borderRadius,
    this.width,
    this.height,
    this.fit,
  });

  /// Путь к файлу в интернет
  final String pathImg;

  /// borderRadius
  final BorderRadiusGeometry? borderRadius;

  /// Ширина
  final double? width;

  /// Высота
  final double? height;

  /// Тип заполнения для изображения
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: (pathImg.isEmpty)
          ? Icon(Icons.now_wallpaper, size: height)
          : CustomCacheImage(
              image: pathImg,
              width: width,
              height: height,
              borderRadius: borderRadius ?? BorderRadius.zero,
              fit: fit ?? BoxFit.cover,
            ),
    );
  }
}
