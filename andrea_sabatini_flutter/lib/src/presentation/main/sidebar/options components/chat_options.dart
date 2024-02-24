import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/options%20components/hovered_options_single_components.dart';
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
          iconpath: 'assets/icons/messages.png',
          chatoptionsname: 'Chats',
          shortcut: 'Shift + C',
          isSelected: selectedType == MenuTypes.chat,
          onTap: () => setState(() {
            selectedType = MenuTypes.chat;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          iconpath: 'assets/icons/circle-star.png',
          chatoptionsname: 'Favourite',
          shortcut: 'Control + F',
          isSelected: selectedType == MenuTypes.favourite,
          onTap: () => setState(() {
            selectedType = MenuTypes.favourite;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          iconpath: 'assets/icons/discover.png',
          chatoptionsname: 'Search',
          shortcut: 'Shift + S',
          isSelected: selectedType == MenuTypes.search,
          onTap: () => setState(() {
            selectedType = MenuTypes.search;
          }),
        ),
        const SizedBox(height: 6),
        HoveredChatOptionsComponents(
          iconpath: 'assets/icons/api.png',
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
