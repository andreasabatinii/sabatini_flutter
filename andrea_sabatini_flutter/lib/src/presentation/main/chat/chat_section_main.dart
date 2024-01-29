import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/ai_user_chat.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/chat_bottom.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/upper_chart.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(Grid.paddingdesktop),
        decoration: BoxDecoration(
          color: theme.bgSecondary,
        ),
        child: const Column(
          children: [
            UpperChat(),
            SizedBox(
              height: Grid.medium,
            ),
            //Spacer(),
            //MiddleRowChat(),
            Expanded(child: AiUserChat()),
            //Spacer(),
            SizedBox(
              height: Grid.medium,
            ),
            BottomChatColumn(),
          ],
        ),
      ),
    );
  }
}
