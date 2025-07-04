import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sdk_chat_remarked/src/shared/widgets/img_network.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'src/core/consts.dart';
import 'src/core/utils.dart';
import 'src/core/ext.dart';
import 'src/domain/message.cg.dart';
import 'src/dto/messages.cg.dart';
import 'src/dto/receive_message.cg.dart';
import 'src/shared/icons.dart';
import 'src/shared/widgets/app_input.dart';
import 'src/shared/widgets/app_text.dart';
import 'src/shared/widgets/appbar_simple.dart';
import 'src/theme/theme_provider.dart';

part 'src/ui/sdk_chat_remarked.dart';
part 'src/ui/_chat_screen.dart';
part 'src/ui/widgets/_bubble.dart';
