import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/ai_chat_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/user_chat_component.dart';
import 'package:flutter/material.dart';

class AiUserChat extends StatelessWidget {
  const AiUserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          reverse: true,
          children: const [
            Column(
              children: [
                UserChatComponent(inputtext: 'What’s a placeholder text?'),
                AiChatComponent(
                    response:
                        'Text that is set temporarily in place of actual copy is called “placeholder text” or “dummy text.” It often takes the form of “lorem ipsum”—a sequence of words from a work of classical literature that is deliberately intended to not be read (in modern times).')
              ],
            )
          ],
        ),
      ),
    );
  }
}
