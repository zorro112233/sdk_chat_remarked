part of '../../sdk_chat_remarked.dart';

class WrapperChatScreen extends StatelessWidget {
  const WrapperChatScreen({
    super.key,
    required this.child,
    required this.title,
    required this.token,
    this.roomOrder,
  });

  final String title;
  final String token;
  final int? roomOrder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
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
                      roomOrder: roomOrder,
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
