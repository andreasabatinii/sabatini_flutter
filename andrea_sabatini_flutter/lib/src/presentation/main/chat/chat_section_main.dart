import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/chat_bottom.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/user_logo_middle.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/upper_chart.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(Grid.paddingdesktop),
        decoration: const BoxDecoration(
          color: Palette.lightgray,
        ),
        child: const Column(
          children: [
            UpperChat(),
            Spacer(),
            MiddleRowChat(),
            //AiUserChat(),
            Spacer(),
            BottomChatColumn(),
          ],
        ),
      ),
    );
  }
}
