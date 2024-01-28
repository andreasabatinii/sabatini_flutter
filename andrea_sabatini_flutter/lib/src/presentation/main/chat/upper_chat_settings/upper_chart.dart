import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/icons/chat_icons.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class UpperChat extends StatelessWidget {
  const UpperChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Palette.gray)),
          ),
          padding: const EdgeInsets.only(bottom: Grid.medium),
          child: const Row(
            children: [
              TitlesText(
                "Lets' start a new chat",
              ),
              Spacer(),
              ChatIcons()
            ],
          ),
        ),
        const SizedBox(height: Grid.medium),
        const SmallParagraph(
          'Chats >> Learning IED',
          textcolor: Palette.gray,
        )
      ],
    );
  }
}
