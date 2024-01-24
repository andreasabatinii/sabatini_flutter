import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/menu_icons_component.dart';
import 'package:flutter/material.dart';

class TightSidebar extends StatelessWidget {
  const TightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(height: 10),
        const Column(
          children: [
            MenuIconComponent(menuiconresponsive: Icons.chat_outlined),
            MenuIconComponent(menuiconresponsive: Icons.star_border_outlined),
            MenuIconComponent(menuiconresponsive: Icons.search),
            MenuIconComponent(menuiconresponsive: Icons.settings_outlined)
          ],
        )
      ],
    );
  }
}
