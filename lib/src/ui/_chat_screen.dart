part of '../../sdk_chat_remarked.dart';

class _ChatScreen extends StatefulWidget {
  const _ChatScreen({
    required this.title,
    required this.token,
    this.idOrder,
  });

  final String title;

  final String token;
  final int? idOrder;

  @override
  State<_ChatScreen> createState() => __ChatScreenState();
}

class __ChatScreenState extends State<_ChatScreen> {
  int _page = 0;
  int totalMessages = 0;
  final _controller = TextEditingController();

  late ScrollController _scrollController;

  static const url = 'wss://whatsapp.clientomer.ru:3003/chat';

  bool isLoading = false;

  String? imagePath;
  String? base64image;

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
        final map = jsonDecode(message) as Map<String, dynamic>;

        /// Сообщение об ошибке
        if (map.containsKey('status')) {
          final m = ReceiveMessageDto.fromJson(map).toDomain();
          changeLoaing(false);
          setState(() {
            _unauthorized = m.message;
          });
          return;
        }

        /// MESSAGES
        if (map.containsKey('messages')) {
          final message = ReceiveMessageDto.fromJson(map).toDomain();
          setState(() {
            _messages.add(message.messages.firstOrNull ?? Message.empty);
          });
          changeLoaing(false);
          if (_page <= 0) {
            addPostFrameCallback(() => _scrollToBottom(isJump: true));
          }
        }

        /// UNSEEN
        if (map.containsKey('unseen')) {
          final allMessages = AllMessagesDto.fromJson(map).toDomain();
          debugModePrint('MESSAGES: ${allMessages.unseen.messages}');
          setState(() {
            totalMessages = allMessages.unseen.meta.total;
            if (_page == 0) {
              _messages.addAll(allMessages.unseen.messages);
            } else {
              _messages.insertAll(0, allMessages.unseen.messages);
            }
          });
          changeLoaing(false);

          if (_page <= 0) {
            addPostFrameCallback(() => _scrollToBottom(isJump: true));
          }
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

  void addHistoryMessages() {
    final start = {
      "auth": {"token": widget.token},
      "page": _page,
    };

    final startOrder = {
      "auth": {"token": widget.token},
      "page": _page,
      "id_order": widget.idOrder,
    };

    final jsonString = jsonEncode(widget.idOrder != null ? startOrder : start);
    channel.sink.add(jsonString);
  }

  Future<void> start() async {
    changeLoaing(true);

    final start = {
      "auth": {"token": widget.token},
      "page": _page,
    };

    final startOrder = {
      "auth": {"token": widget.token},
      "page": _page,
      "id_order": widget.idOrder,
    };

    final jsonString = jsonEncode(widget.idOrder != null ? startOrder : start);

    channel.sink.add(jsonString);
  }

  void _sendMessage() {
    final map = {
      "messages": [
        {
          "order_id": widget.idOrder,
          "text": _controller.text,
          "attachment": {
            "name_orig": "file_name_${_messages.length + 1}.jpg",
            "raw": base64image,
          },
        }
      ]
    };
    final jsonString = jsonEncode(map);

    if (_controller.text.isNotEmpty) {
      debugModePrint('jsonString $jsonString');
      channel.sink.add(jsonString);

      setState(() {
        _messages.add(Message(
          text: _controller.text,
          isOutgoing: false,
          timestamp: DateTime.now(),
          id: _messages.length + 1,
          uuid: '',
          to: 0,
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

  void _scrollToBottom({bool isJump = false}) {
    if (!isLoading && _messages.isNotEmpty && _scrollController.hasClients) {
      if (isJump) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      } else {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    }
  }

  void changeLoaing(bool b) {
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

  @override
  void dispose() {
    _messages.clear();
    channel.sink.close();
    _scrollController.dispose();
    _debouncer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final messagesByDate = groupMenssagesByDate(_messages);
    return Scaffold(
      backgroundColor: const Color(0xFFFFCDCD),
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
                else if (_messages.isEmpty)
                  Expanded(
                    child: Center(
                      child: AppText.bold24('Переписка пуста'),
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
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          itemCount: messagesByDate.length,
                          itemBuilder: (context, index) {
                            final date = messagesByDate.keys.elementAt(index);
                            final menssageForDate = messagesByDate[date]!;

                            final isToday = now.difference(date).inDays == 0;

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
                        Row(
                          children: [
                            Image.file(
                              File(imagePath!),
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            4.sbHeight,
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: _clear,
                            ),
                          ],
                        ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: _handleImageSelection,
                          ),
                          Expanded(
                            child: AppInput(
                              controller: _controller,
                              hintText: 'Напишите сообщение',
                            ),
                          ),
                          12.sbWidth,
                          Material(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                            child: InkWell(
                              onTap: _sendMessage,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                              child: Ink(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                child: Icon(
                                  Icons.north,
                                  size: 20,
                                  color: AppColors.white,
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
    );
  }
}
