import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/chat_recommended.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/textfield_chat.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class BottomChatColumn extends StatelessWidget {
  const BottomChatColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (MediaQuery.of(context).size.width >= 800) const ChatRecommended(),
        const SizedBox(height: Grid.small),
        const TextfieldChat(),
        const SizedBox(height: Grid.small),
        const SmallParagraph(
            'Supermind may make some mistakes. Nobody is perfect!'),
        // Altri widget...
      ],
    );
  }
}
