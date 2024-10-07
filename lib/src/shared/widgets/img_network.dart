import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sdk_chat_remarked/src/core/inapp_logger.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/app_text.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/preloader.dart';

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
    const preloader = PreLoader();

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: (pathImg.isEmpty)
          ? Icon(Icons.now_wallpaper, size: height)
          : CachedNetworkImage(
              imageUrl: pathImg,
              width: width,
              height: height,
              fit: fit ?? BoxFit.cover,
              placeholder: (_, __) => preloader,
              errorWidget: (context, url, error) {
                logInfo(
                  'ImgNetwork imageErrorBuilder',
                  'unreachable pathImg: $pathImg',
                );
                return Center(child: AppText.semiBold18('404 Error image'));
              },
            ),
    );
  }
}
