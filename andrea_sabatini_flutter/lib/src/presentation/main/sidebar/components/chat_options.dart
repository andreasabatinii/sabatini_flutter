import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/components/hovered_options_single_components.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/components/options_single_components.dart';
import 'package:flutter/material.dart';

class ChatOptions extends StatelessWidget {
  const ChatOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HoveredChatOptionsComponents(
            optionsicon: Icons.chat_outlined,
            chatoptionsname: 'Chats',
            shortcut: 'Shift + C'),
        SizedBox(height: 6),
        ChatOptionsComponents(
            optionsicon: Icons.star_outline_rounded,
            chatoptionsname: 'Favourite',
            shortcut: 'Control + F'),
        SizedBox(height: 6),
        ChatOptionsComponents(
            optionsicon: Icons.search_outlined,
            chatoptionsname: 'Search',
            shortcut: 'Shift + S'),
        SizedBox(height: 6),
        ChatOptionsComponents(
            optionsicon: Icons.settings_outlined,
            chatoptionsname: 'Settings',
            shortcut: 'Option + C'),
      ],
    );
  }
}
