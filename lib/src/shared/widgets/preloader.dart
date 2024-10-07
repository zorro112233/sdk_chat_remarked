import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sdk_chat_remarked/src/theme/theme_provider.dart';

/// Стандартный виджет процесса загрузки
class PreLoader extends StatelessWidget {
  /// Стандартный виджет процесса загрузки
  const PreLoader({
    this.size,
    this.color,
    super.key,
  });

  /// Размер
  final double? size;

  /// Цвет
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RepaintBoundary(
        child: Spin(
          infinite: true,
          child: Icon(
            Icons.rotate_right,
            size: size,
            color: color ?? AppColors.black,
          ),
        ),
      ),
    );
  }
}
