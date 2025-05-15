part of '../../sdk_chat_remarked.dart';

class _ChatScreen extends StatefulWidget {
  const _ChatScreen({
    required this.title,
    required this.token,
    this.idOrder,
    this.colorIcon,
    this.colorBg,
    this.point,
    this.hint,
    this.emptyListPlaceholder,
  });

  final String title;
  final String? hint;
  final String? emptyListPlaceholder;

  final String token;
  final String? point;
  final int? idOrder;

  final Color? colorIcon;
  final Color? colorBg;
  @override
  State<_ChatScreen> createState() => __ChatScreenState();
}

class __ChatScreenState extends State<_ChatScreen> {
  String get token => widget.token;
  String? get point => widget.point;
  int? get idOrder => widget.idOrder;


  // String get token => 'c27f1301118c9b4c5612a5615bc2566f';
  // String? get point => '118100';
  // String? get idOrder => '1';



  int _page = 0;
  int totalMessages = 0;
  final _controller = TextEditingController();

  late ScrollController _scrollController;

  static const url = 'wss://whatsapp1.clientomer.ru:3003/chat';

  bool isLoading = false;

  String? imagePath;
  String? base64image;

  bool isPushedButtons = false;
  bool isLoadingAfterOrderReview = false;

  /// Замените на ваш WebSocket сервер
  final channel = WebSocketChannel.connect(
    Uri.parse(url),
  );

  final List<Message> _messages = [];
  var _unauthorized = '';

  final Debouncer _debouncer = Debouncer(delay: const Duration(seconds: 1));

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    start();

    channel.stream.listen(
      (message) {
        // debugModePrint('message $message');
        final map = jsonDecode(message) as Map<String, dynamic>;

        /// Сообщение об ошибке
        if (map['status'] != null && !map['status']) {
          changeLoading(false);
          setState(() {
            _unauthorized = map['message'];
          });
          return;
        }

        /// MESSAGES
        if (map.containsKey('messages')) {
          // debugModePrint('MESSAGES::: ${map['messages']}');
          final message = ReceiveMessageDto.fromJson(map).toDomain();
          setState(() {
            _messages.add(message.messages.firstOrNull ?? Message.empty);
          });
          if (_page <= 0) {
            addPostFrameCallback(() => _scrollToBottom());
          }
        }

        /// UNSEEN
        if (map.containsKey('unseen')) {
          // debugModePrint('UNSEEN::: ${map['unseen']}');
          final allMessages = AllMessagesDto.fromJson(map).toDomain();

          setState(() {
            totalMessages = allMessages.unseen.meta.total;
            if (_page == 0) {
              _messages.addAll(allMessages.unseen.messages);
              addPostFrameCallback(() => _scrollToBottom(isJump: true));
            } else {
              _messages.insertAll(0, allMessages.unseen.messages);
            }
          });
          changeLoading(false);
        }

        final mapMessageDto = MessageDto.fromJson(map);
        final mapMessage = mapMessageDto.toDomain();
        if (mapMessage != Message.empty && mapMessage.text.isNotEmpty) {
          _messages.add(mapMessage);
          _changeLoadingAfterOrderReview(false);
          addPostFrameCallback(() => _scrollToBottom());
        }
      },
    );

    _scrollController.addListener(() {
      if (totalMessages > _messages.length) {
        if (_scrollController.position.pixels == 0) {
          _page++;
          start();
        }
      }
    });
  }

  Future<void> start() async {
    changeLoading(true);

    final start = {
      "auth": {"token": token, "point": point},
      "page": _page,
    };

    final startOrder = {
      "auth": {"token": token, "point": point},
      "page": _page,
      "id_order": widget.idOrder,
    };

    final jsonString = jsonEncode(idOrder != null ? startOrder : start);
    channel.sink.add(jsonString);
  }

  void _sendMessage() {
    final map = {
      "messages": [
        {
          "order_id": idOrder,
          "text": _controller.text,
          "attachment": {
            "name_orig": "file_name_${_messages.length + 1}.jpg",
            "raw": base64image,
          },
        }
      ]
    };
    final jsonString = jsonEncode(map);
    final hasImg = imagePath?.isNotEmpty ?? false;

    if (hasImg || _controller.text.isNotEmpty) {
      channel.sink.add(jsonString);

      setState(() {
        _messages.add(Message(
          text: _controller.text,
          isOutgoing: false,
          timestamp: DateTime.now(),
          id: _messages.length + 1,
          uuid: '',
          direction: 'in',
          to: '0',
          attachment: imagePath ?? '',
        ));
      });

      _controller.clear();
      _clear();

      addPostFrameCallback(_scrollToBottom);
    }
  }

  void _handleImageSelection() async {
    final res = await pickImageToBase64();

    setState(() {
      base64image = res.base64image;
      imagePath = res.imagePath;
    });
  }

  Future<void> _scrollToBottom({bool isJump = false}) async {
    if (!isLoading && _messages.isNotEmpty && _scrollController.hasClients) {
      if (isJump) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        _scrollController.jumpTo(maxScrollExtent * 3);
      } else {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    }
  }

  void changeLoading(bool b) {
    setState(() {
      isLoading = b;
    });
  }

  void _clear() {
    setState(() {
      base64image = null;
      imagePath = null;
    });
  }

  Map<DateTime, List<Message>> groupMenssagesByDate(
    List<Message> messages,
  ) {
    final groupedMessages = <DateTime, List<Message>>{};

    for (final message in messages) {
      final date = DateFormat('yyyy-MM-dd')
          .parse(DateFormat('yyyy-MM-dd').format(message.timestamp));
      if (!groupedMessages.containsKey(date)) {
        groupedMessages[date] = [];
      }
      groupedMessages[date]!.add(message);
    }

    return groupedMessages;
  }

  void _order() {
    _changeLoadingAfterOrderReview(true);
    final map = {
      "auth": {"token": token, "point": point},
      "messages": [
        {
          "order_id": '1',
          "collback": "start_orders",
          "text": "Заказ",
          "extra": {"message_type": "close_chain"},
          "id": generateLargeNumber()
        }
      ]
    };
    final jsonString = jsonEncode(map);
    debugModePrint('_order jsonString $jsonString');
    channel.sink.add(jsonString);

    setState(() {
      _messages.add(Message(
        text: "Заказ",
        isOutgoing: false,
        timestamp: DateTime.now(),
        direction: 'in',
        id: _messages.length + 1,
        uuid: '',
        to: '0',
        attachment: '',
      ));
    });

    _controller.clear();
    _clear();

    addPostFrameCallback(_scrollToBottom);
    _changePushedButtons(true);
  }

  void _orderBtn({required Button btn, required String chainId}) {
    _changeLoadingAfterOrderReview(true);
    final map = {
      "auth": {"token": token, "point": point},
      "messages": [
        {
          "order_id": chainId,
          "collback": btn.callbackData,
          "text": btn.text,
          "extra": {"message_type": "close_chain"},
          "id": generateLargeNumber()
        }
      ]
    };
    final jsonString = jsonEncode(map);
    channel.sink.add(jsonString);
    debugModePrint('_orderBtn jsonString $jsonString');
    setState(() {
      _messages.add(Message(
        text: btn.text,
        isOutgoing: false,
        timestamp: DateTime.now(),
        direction: 'in',
        id: _messages.length + 1,
        uuid: '',
        to: '0',
        attachment: '',
      ));
    });

    _controller.clear();
    _clear();

    addPostFrameCallback(_scrollToBottom);
    _changePushedButtons(true);
  }

  void _leaveReview() {
    _changeLoadingAfterOrderReview(true);
    final map = {
      "auth": {"token": token, "point": point},
      "messages": [
        {
          "order_id": '1',
          "collback": "start_feedback",
          "text": "Оставить отзыв",
          "extra": {"message_type": "close_chain"},
          "id": generateLargeNumber()
        }
      ]
    };
    final jsonString = jsonEncode(map);
    debugModePrint('_order jsonString $jsonString');
    channel.sink.add(jsonString);

    setState(() {
      _messages.add(Message(
        text: "Оставить отзыв",
        isOutgoing: false,
        timestamp: DateTime.now(),
        direction: 'in',
        id: _messages.length + 1,
        uuid: '',
        to: '0',
        attachment: '',
      ));
    });

    _controller.clear();
    _clear();

    addPostFrameCallback(_scrollToBottom);
    _changePushedButtons(true);
  }

  @override
  void dispose() {
    _messages.clear();
    channel.sink.close();
    _scrollController.dispose();
    _debouncer.cancel();
    super.dispose();
  }

  void _changePushedButtons(bool b) {
    setState(() {
      isPushedButtons = b;
    });
  }

  void _changeLoadingAfterOrderReview(bool b) {
    setState(() {
      isLoadingAfterOrderReview = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    final messagesByDate = groupMenssagesByDate(_messages);
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor:
              widget.colorBg?.withValues(alpha: .4) ?? const Color(0xFFFFCDCD),
          appBar: SimpleAppBar(
            title: widget.title,
            onLeadingTap: () {
              Navigator.pop(context);
            },
          ),
          body: _unauthorized.isNotEmpty
              ? Center(
                  child: AppText.bold24(_unauthorized),
                )
              : Column(
                  children: <Widget>[
                    12.sbHeight,
                    if (isLoading && _messages.isEmpty)
                      Expanded(
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: AppColors.grayBtn,
                          ),
                        ),
                      )
                    else if (!isLoading && _unauthorized.isNotEmpty)
                      Expanded(
                        child: Center(
                          child: AppText.bold24(_unauthorized),
                        ),
                      )
                    else if (_messages.isEmpty &&
                        widget.emptyListPlaceholder != null)
                      Expanded(
                        child: Center(
                          child: AppText.bold24(widget.emptyListPlaceholder),
                        ),
                      )
                    else
                      Expanded(
                        child: Stack(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              controller: _scrollController,
                              physics: const ClampingScrollPhysics(),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              itemCount: messagesByDate.length,
                              itemBuilder: (context, index) {
                                final date =
                                    messagesByDate.keys.elementAt(index);
                                final menssageForDate = messagesByDate[date]!;

                                final isToday =
                                    now.difference(date).inDays == 0;

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Заголовок с датой
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Center(
                                        child: AppText.medium14(
                                          isToday
                                              ? 'Сегодня'.hardcoded
                                              : date.stringFromDateTime,
                                          color: AppColors.grayBtn,
                                        ),
                                      ),
                                    ),
                                    if (isLoading)
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Center(
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: AppColors.grayBtn,
                                          ),
                                        ),
                                      ),
                                    // Список транзакций для этой даты
                                    ...menssageForDate.map(
                                      (t) {
                                        return _ChatBubble(
                                          message: t,
                                          colorBg: widget.colorBg
                                              ?.withValues(alpha: .3),
                                          callbackData: _orderBtn,
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                              // separatorBuilder: (context, index) => 12.sbHeight,
                            ),
                          ],
                        ),
                      ),
                    if (isLoadingAfterOrderReview) const _TypingIndicator(),
                    if (!isPushedButtons)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: AppText.medium14(
                                'Привет, это Фрэнк!\nПодскажи, ты хочешь оставить отзыв или\nу тебя вопрос по заказу?',
                                textAlign: TextAlign.right,
                              ),
                            ),
                            8.sbHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _Btn(
                                  title: 'Заказ',
                                  onTap: _order,
                                ),
                                12.sbWidth,
                                _Btn(
                                  title: 'Оставить отзыв',
                                  onTap: _leaveReview,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    12.sbHeight,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 16,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF8F9FC),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (imagePath != null)
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  child: Image.file(
                                    File(imagePath!),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  width: 20,
                                  height: 20,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.close,
                                      size: 12,
                                      color: AppColors.paleVioletTxt,
                                    ),
                                    onPressed: _clear,
                                    padding: EdgeInsets.zero,
                                  ),
                                )
                              ],
                            ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: _handleImageSelection,
                                color: AppColors.paleVioletTxt,
                              ),
                              Expanded(
                                child: AppInput(
                                  controller: _controller,
                                  hintText: widget.hint,
                                  height: 40,
                                ),
                              ),
                              12.sbWidth,
                              Material(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(40)),
                                child: InkWell(
                                  onTap: _sendMessage,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(40)),
                                  child: Ink(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: widget.colorBg ?? Colors.red,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.north,
                                      size: 20,
                                      color:
                                          widget.colorIcon ?? AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
