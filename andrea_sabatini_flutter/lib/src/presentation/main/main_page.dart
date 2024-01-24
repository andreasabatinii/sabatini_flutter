import 'package:andrea_sabatini_flutter/src/presentation/main/chat/chat_section_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/chat_sidebar.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/responsive_sidebar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return Container(
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF101010),
            child: const Row(
              children: [
                TightSidebar(),
                SizedBox(width: 15),
                ChatSection(),
              ],
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.all(25.0),
            color: const Color(0xFF101010),
            child: Row(
              children: [
                Container(
                    width: 270,
                    color: const Color(0xFF101010),
                    child: const ChatSidebar()),
                const SizedBox(width: 20),
                const ChatSection(),
              ],
            ),
          );
        }
      }),
    );
  }
}
