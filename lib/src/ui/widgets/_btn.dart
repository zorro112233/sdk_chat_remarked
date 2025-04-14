part of '../../../sdk_chat_remarked.dart';

class _Btn extends StatelessWidget {
  const _Btn({
    required this.title,
    required this.onTap,
    this.decoration,
    this.colorText,
  });

  final String title;
  final void Function() onTap;
  final Decoration? decoration;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: decoration ??
              BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
          child: AppText.medium14(
            title,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
