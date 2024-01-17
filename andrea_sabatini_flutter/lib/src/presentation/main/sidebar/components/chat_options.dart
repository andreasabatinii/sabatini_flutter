import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/components/hovered_options_single_components.dart';
import 'package:flutter/material.dart';

enum MenuTypes { chat, favourite, search, settings }

class ChatOptions extends StatefulWidget {
  const ChatOptions({super.key});

  @override
  State<ChatOptions> createState() => _ChatOptionsState();
}

class _ChatOptionsState extends State<ChatOptions> {
  MenuTypes selectedType = MenuTypes.chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HoveredChatOptionsComponents(
          optionsicon: Icons.chat_outlined,
          chatoptionsname: 'Chats',
          shortcut: 'Shift + C',
          isSelected: selectedType == MenuTypes.chat,
          onTap: () => setState(() {
            selectedType = MenuTypes.chat;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          optionsicon: Icons.star_border_outlined,
          chatoptionsname: 'Favourite',
          shortcut: 'Control + F',
          isSelected: selectedType == MenuTypes.favourite,
          onTap: () => setState(() {
            selectedType = MenuTypes.favourite;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          optionsicon: Icons.search,
          chatoptionsname: 'Search',
          shortcut: 'Shift + S',
          isSelected: selectedType == MenuTypes.search,
          onTap: () => setState(() {
            selectedType = MenuTypes.search;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          optionsicon: Icons.settings_outlined,
          chatoptionsname: 'Settings',
          shortcut: 'Option + C',
          isSelected: selectedType == MenuTypes.settings,
          onTap: () => setState(() {
            selectedType = MenuTypes.settings;
          }),
        ),
      ],
    );
  }
}
