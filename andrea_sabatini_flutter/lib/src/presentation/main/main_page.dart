import 'package:andrea_sabatini_flutter/src/presentation/main/chat/chat_section_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/chat_sidebar.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/responsive_sidebar.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/responsive_sidebar_content.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: const SidebarContent()),
      body: LayoutBuilder(builder: (context, constraints) {
        Axis direction =
            constraints.maxWidth < 500 ? Axis.vertical : Axis.horizontal;

        if (constraints.maxWidth < 800) {
          return Container(
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF101010),
            child: Flex(
              direction: direction,
              children: const [
                TightSidebar(),
                SizedBox(
                  width: 10,
                  height: 8,
                ),
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
                const SizedBox(
                  width: 20,
                ),
                const ChatSection(),
              ],
            ),
          );
        }
      }),
    );
  }
}



/*
appBar: AppBar(
        title: const Text('My App'),
      ),*/