part of '../../sdk_chat_remarked.dart';

class SdkChatRemarked extends StatelessWidget {
  const SdkChatRemarked({
    super.key,
    required this.child,
    required this.title,
    required this.token,
    this.idOrder,
  });

  final String title;
  final String token;
  final int? idOrder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        if (token.isNotEmpty)
          Positioned(
            bottom: 12,
            right: 12,
            child: Material(
              borderRadius: Consts.borderRadius44,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _ChatScreen(
                        title: title,
                        token: token,
                        idOrder: idOrder,
                      ),
                    ),
                  );
                },
                borderRadius: Consts.borderRadius44,
                child: Ink(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: Consts.borderRadius44,
                  ),
                  child: Center(child: AppIcons.icon(AppIcons.chat)),
                ),
              ),
            ),
          )
      ],
    );
  }
}
