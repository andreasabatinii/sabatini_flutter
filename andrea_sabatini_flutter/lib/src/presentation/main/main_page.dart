import 'package:andrea_sabatini_flutter/src/presentation/main/chat/chat_section_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/chat_sidebar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25.0),
        color: const Color(0xFF101010),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(2),
                width: 270,
                color: Colors.white,
                child: const ChatSidebar()),
            const SizedBox(width: 20),
            const ChatSection(),
          ],
        ),
      ),
    );
  }
}
