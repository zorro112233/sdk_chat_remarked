import 'package:flutter/material.dart';

import '../../theme/theme_provider.dart';
import '../../core/ext.dart';
import '../icons.dart';
import 'app_text.dart';

/// Простой AppBar содержащий кнопку назад
class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Простой AppBar содержащий кнопку назад и заголовок
  const SimpleAppBar({
    super.key,
    this.onLeadingTap,
    this.title,
    this.elevation = 0,
    this.hasContainer = false,
    this.hasLeading = true,
    this.centerTitle = true,
    this.isFlexibleSpace = true,
    this.actions,
  });

  /// По умолчанию [tryGoBack]
  final void Function()? onLeadingTap;
  final String? title;
  final double? elevation;
  final bool hasLeading;
  final bool centerTitle;
  final List<Widget>? actions;
  final bool isFlexibleSpace;

  /// Является ли фон прозрачным. Также влияет на заливку кнопки Назад
  final bool hasContainer;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      centerTitle: isFlexibleSpace ? null : centerTitle,
      title: isFlexibleSpace ? null : AppText.semiBold18(title),
      leading: isFlexibleSpace
          ? null
          : hasLeading
              ? GestureDetector(
                  onTap: onLeadingTap,
                  child: Row(
                    children: [
                      20.sbWidth,
                      AppIcons.arrowLeft(),
                    ],
                  ),
                )
              : null,
      flexibleSpace: isFlexibleSpace
          ? Container(
              padding: const EdgeInsets.only(bottom: 14, top: 24),
              decoration: BoxDecoration(
                color: AppColors.bgMain,
                boxShadow: AppColors.dropShadowAppBar,
              ),
              child: _AppBar(
                onLeadingTap: onLeadingTap,
                title: title,
                hasLeading: hasLeading,
                actions: actions,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size(0, 62);
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    this.onLeadingTap,
    this.title,
    this.hasLeading = true,
    this.actions,
  });

  /// По умолчанию [tryGoBack]
  final void Function()? onLeadingTap;
  final String? title;
  final bool hasLeading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (hasLeading)
              GestureDetector(
                onTap: onLeadingTap,
                child: Row(
                  children: [
                    20.sbWidth,
                    AppIcons.arrowLeft(),
                  ],
                ),
              )
            else
              const SizedBox(width: 40),
            if (title != null)
              FittedBox(
                child: Center(
                  child: AppText.semiBold18(title),
                ),
              ),
            Row(
              children: actions ?? [const SizedBox(width: 40)],
            ),
          ],
        ),
      ),
    );
  }
}
