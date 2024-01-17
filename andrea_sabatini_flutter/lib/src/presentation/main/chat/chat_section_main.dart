import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/ai_user_chat.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/chat_bottom.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/upper_chart.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white, // Sostituisci con il colore desiderato
        borderRadius:
            BorderRadius.circular(10), // Sostituisci con il raggio desiderato
      ),
      child: const Column(
        children: [
          UpperChat(),
          //Spacer(),
          AiUserChat(),
          //Spacer(),
          BottomChatColumn()
        ],
      ),
    ));
  }
}
