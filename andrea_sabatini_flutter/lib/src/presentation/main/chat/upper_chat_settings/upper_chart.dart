import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/chat_title.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/icons/chat_icons.dart';
import 'package:flutter/material.dart';

class UpperChat extends StatelessWidget {
  const UpperChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ChatTitle(
            chattitle: "Lets' start a new chat",
          ),
          Spacer(),
          ChatIcons()
        ],
      ),
    );
  }
}
