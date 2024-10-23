import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sdk_chat_remarked/src/core/utils.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/preloader.dart';

class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({
    required this.image,
    this.height,
    this.width,
    this.borderRadius,
    this.fit,
    super.key,
  });

  final String image;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: FutureBuilder<File>(
        future: downloadAndCompressImage(image),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              height: height,
              child: const PreLoader(),
            );
          } else if (snapshot.hasError) {
            return Container(
              color: Colors.white,
              child: const Center(
                child: SizedBox(
                  height: 11,
                  child: Icon(
                    Icons.error,
                  ),
                ),
              ),
            );
          } else {
            return ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.zero,
              child: Image.file(
                snapshot.data ?? File(''),
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            );
          }
        },
      ),
    );
  }
}
