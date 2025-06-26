part of '../../../sdk_chat_remarked.dart';

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({
    required this.message,
    this.colorBg,
    this.callbackData,
  });

  final Message message;
  final Color? colorBg;
  final void Function({required Button btn, required String chainId})?
      callbackData;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat('HH:mm').format(message.timestamp);
    final hasExtra = message.extra != null;
    return Align(
      alignment:
          message.isOutgoing ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: message.isOutgoing
              ? AppColors.bgWhite
              : colorBg ?? const Color(0xFFFFF0F0),
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
          crossAxisAlignment: message.isOutgoing
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            if (message.text.isNotEmpty) ...[
              AppText.reqular14(message.text),
              6.sbHeight,
            ],

            _Image(message.attachment),
            if (hasExtra)
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final btn in message.extra!.buttons) ...[
                      _Btn(
                        title: btn.text,
                        onTap: () {
                          callbackData?.call(
                            btn: btn,
                            chainId: message.extra!.scenarioStepId,
                          );
                        },
                        colorText: AppColors.white,
                        decoration: BoxDecoration(
                          color: AppColors.grayBtn,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      6.sbHeight,
                    ]
                  ],
                ),
              ),

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

class _Image extends StatelessWidget {
  const _Image(this.image);

  final String image;
  @override
  Widget build(BuildContext context) {
    final isNetworkImage = image.contains('https');
    return Column(
      children: isNetworkImage
          ? [
              ImgNetwork(
                pathImg: image,
                height: 150,
                fit: BoxFit.contain,
                borderRadius: const BorderRadius.all(Radius.circular(6)),
              ),
              6.sbHeight,
            ]
          : image.isNotEmpty
              ? [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.file(
                      File(image),
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  6.sbHeight,
                ]
              : [const SizedBox.shrink()],
    );
  }
}
