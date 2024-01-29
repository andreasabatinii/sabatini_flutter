import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/ai_user_chat.dart';
import 'package:flutter/material.dart';

class ChatField extends StatelessWidget {
  const ChatField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: AiUserChat());
  }
}
