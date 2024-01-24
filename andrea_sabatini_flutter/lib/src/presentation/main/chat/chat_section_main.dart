import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/chat_bottom.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/user_logo_middle.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/upper_chart.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (!Scaffold.of(context).isDrawerOpen) {
            Scaffold.of(context).openDrawer();
          }
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [
              UpperChat(),
              Spacer(),
              MiddleRowChat(),
              // AiUserChat(),
              Spacer(),
              BottomChatColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
