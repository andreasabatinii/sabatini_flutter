import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/textfield_chat.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class BottomChatColumn extends StatelessWidget {
  const BottomChatColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: Grid.small),
        TextfieldChat(),
        SizedBox(height: Grid.small),
        SmallParagraph('Supermind may make some mistakes. Nobody is perfect!'),
        // Altri widget...
      ],
    );
  }
}
