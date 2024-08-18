part of '../../../sdk_chat_remarked.dart';

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat('HH:mm').format(message.timestamp);

    return Align(
      alignment:
          message.isOutgoing ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color:
              message.isOutgoing ? AppColors.bgWhite : const Color(0xFFFFF0F0),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: message.isOutgoing
                ? const Radius.circular(0)
                : const Radius.circular(16),
            bottomRight: message.isOutgoing
                ? const Radius.circular(16)
                : const Radius.circular(0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppText.reqular14(message.text),
            6.sbHeight,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.reqular10(time),
                if (!message.isOutgoing) ...[
                  // 2.sbWidth,
                  // AppIcons.icon(
                  //   AppIcons.readedIcon,
                  //   width: 14,
                  //   height: 14,
                  // ),
                ],
              ],
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: AppText.reqular10(time),
            // ),
          ],
        ),
      ),
    );
  }
}
