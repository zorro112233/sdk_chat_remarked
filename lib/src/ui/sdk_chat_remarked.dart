part of '../../sdk_chat_remarked.dart';

class SdkChatRemarked extends StatelessWidget {
  const SdkChatRemarked({
    super.key,
    required this.child,
    required this.title,
    required this.token,
    this.idOrder,
    this.colorIcon,
    this.colorBg,
    this.buttonIcon,
    this.borderRadius,
    this.left,
    this.top,
    this.point,
    this.hint,
    this.emptyListPlaceholder,
    this.right = 12,
    this.bottom = 12,
  });

  final String title;
  final String? hint;
  final String? emptyListPlaceholder;
  final String token;
  final String? idOrder;
  final Widget child;
  final Color? colorIcon;
  final Color? colorBg;
  final Widget? buttonIcon;
  final BorderRadius? borderRadius;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final String? point;

  @override
  Widget build(BuildContext context) {
    final radius = buttonIcon == null ? Consts.borderRadius44 : borderRadius;
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        if (token.isNotEmpty)
          Positioned(
            bottom: bottom,
            right: right,
            left: left,
            top: top,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _ChatScreen(
                      title: title,
                      hint: hint,
                      emptyListPlaceholder: emptyListPlaceholder,
                      token: token,
                      idOrder: idOrder,
                      colorBg: colorBg,
                      colorIcon: colorIcon,
                      point: point,
                    ),
                  ),
                );
              },
              child: buttonIcon ??
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: colorBg ?? AppColors.pink,
                      borderRadius: radius,
                    ),
                    child: Center(
                      child: AppIcons.icon(
                        AppIcons.chat,
                        color: colorIcon ?? AppColors.white,
                      ),
                    ),
                  ),
            ),
          )
      ],
    );
  }
}
