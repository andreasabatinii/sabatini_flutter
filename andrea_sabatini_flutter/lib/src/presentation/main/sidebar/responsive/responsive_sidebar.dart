import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/menu_icons_component.dart';
import 'package:flutter/material.dart';

class TightSidebar extends StatelessWidget {
  const TightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    Axis directionmenu = MediaQuery.of(context).size.width < 500
        ? Axis.horizontal
        : Axis.vertical;

    return Flex(
      direction: directionmenu,
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
        if (MediaQuery.sizeOf(context).width <= 750)
          GestureDetector(
            onTap: () {
              if (!Scaffold.of(context).isDrawerOpen) {
                Scaffold.of(context).openDrawer();
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF212121), Color(0xFF3E3E3E)],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFFFFFFF), // Colore dell'ombra
                    spreadRadius: 0, // Raggio di diffusione
                    blurRadius: 0, // Raggio di sfocatura
                    offset: Offset(0, 1), // Offset (spostamento) dell'ombra
                  ),
                ],
              ),
              child: const Icon(Icons.double_arrow_outlined,
                  color: Color(0xFFFFFFFF), size: 16),
            ),
          ),
        const SizedBox(height: 10),
        Flex(
          direction: directionmenu,
          children: const [
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
