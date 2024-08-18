library sdk_chat_remarked;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sdk_chat_remarked/src/core/consts.dart';
import 'package:sdk_chat_remarked/src/core/ext.dart';
import 'package:sdk_chat_remarked/src/core/inapp_logger.dart';
import 'package:sdk_chat_remarked/src/core/utils.dart';
import 'package:sdk_chat_remarked/src/domain/message.cg.dart';
import 'package:sdk_chat_remarked/src/dto/messages.cg.dart';
import 'package:sdk_chat_remarked/src/dto/receive_message.cg.dart';
import 'package:sdk_chat_remarked/src/shared/icons.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/app_input.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/app_text.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/appbar_simple.dart';
import 'package:sdk_chat_remarked/src/theme/theme_provider.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'src/ui/wrapper_chat_screen.dart';
part 'src/ui/_chat_screen.dart';
part 'src/ui/widgets/_bubble.dart';
