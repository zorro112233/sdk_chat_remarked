part of '../../sdk_chat_remarked.dart';

class _ChatScreen extends StatefulWidget {
  const _ChatScreen({
    required this.title,
    required this.token,
    this.roomOrder,
  });

  final String title;

  final String token;
  final int? roomOrder;

  @override
  State<_ChatScreen> createState() => __ChatScreenState();
}

class __ChatScreenState extends State<_ChatScreen> {
  final _controller = TextEditingController();

  late ScrollController _scrollController;

  static const url = 'wss://whatsapp.clientomer.ru:3003/chat';

  bool isLoading = false;

  /// Замените на ваш WebSocket сервер
  final channel = WebSocketChannel.connect(
    Uri.parse(url),
  );

  final List<Message> _messages = [];
  var _unauthorized = '';

  Map<dynamic, dynamic> get lastMess => {
        "auth": {"token": widget.token},
        "page": 0,
      };

  @override
  void initState() {
    super.initState();
    start();
    channel.stream.listen(
      (message) {
        final map = jsonDecode(message) as Map<String, dynamic>;

        InAppLogger.instance.logInfoMessage('STREAM MESSAGE', map);

        /// Сообщение об ошибке
        if (map.containsKey('message')) {
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

          addPostFrameCallback(() => _scrollToBottom(isJump: true));
        }

        /// UNSEEN
        if (map.containsKey('unseen')) {
          final allMessages = AllMessagesDto.fromJson(map).toDomain();

          setState(() {
            _messages.addAll(allMessages.unseen.messages);
          });
          changeLoaing(false);

          addPostFrameCallback(() => _scrollToBottom(isJump: true));
        }

        // InAppLogger.instance.logInfoMessage('receiveMessage', allMessages);
      },
    );
  }

  Future<void> start() async {
    changeLoaing(true);
    _scrollController = ScrollController();
    debugPrint('start token ${widget.token}');
    final jsonString = jsonEncode(lastMess);
    channel.sink.add(jsonString);
  }

  void _sendMessage() {
    final map = {
      "auth": {"token": widget.token},
      "messages": [
        {"text": _controller.text}
      ],
    };
    final jsonString = jsonEncode(map);
    debugPrint('jsonString $jsonString');
    if (_controller.text.isNotEmpty) {
      channel.sink.add(jsonString);

      setState(() {
        _messages.add(Message(
          text: _controller.text,
          isOutgoing: false,
          timestamp: DateTime.now(),
          id: _messages.length + 1,
          uuid: '',
          to: 0,
        ));
      });

      _controller.clear();

      addPostFrameCallback(_scrollToBottom);
    }
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

  @override
  void dispose() {
    debugPrint('dispose');
    _messages.clear();
    channel.sink.close();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('isLoading $isLoading');
    return Scaffold(
      backgroundColor: const Color(0xFFFFCDCD),
      appBar: SimpleAppBar(
        title: 'Chat App',
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
                if (isLoading)
                  const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
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
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: _scrollController,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        final message = _messages[index];

                        if (_messages.isEmpty) {
                          return Center(
                            child: AppText.bold24('No messages yet'),
                          );
                        }
                        return _ChatBubble(
                          message: message,
                        );
                      },
                      // separatorBuilder: (context, index) => 12.sbHeight,
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
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: AppInput(
                          controller: _controller,
                          hintText: 'Type a message',
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
                ),
              ],
            ),
    );
  }
}
