import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/chat_section/messages/message_ai.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/chat_section/messages/message_user.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'user',
        'message': 'ciao',
      },
    ];
    return Column(
      children: messages
          .map((e) => e['type'] == 'user'
              ? MessageUserWidget(label: e['message'] as String)
              : MessageAiWidget(label: e['message'] as String))
          .toList(),
    );

    /*
    return Column(
      children: [
        for (final message in messages)
          message['type'] == 'user'
              ? MessageUserWidget(label: message['message'] as String)
              : MessageAiWidget(label: message['message'] as String),
      ],
    );*/
  }
}
