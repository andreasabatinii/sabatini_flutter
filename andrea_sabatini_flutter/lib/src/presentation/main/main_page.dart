import 'package:andrea_sabatini_flutter/src/presentation/main/blocs/chat_cubit_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/chat_section_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/chat_sidebar.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/responsive_sidebar.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/responsive_sidebar_content.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return BlocProvider(
      create: (context) => ChatCubitMain()..loadMessages(),
      child: Scaffold(
        drawer: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.7,
            child: const SidebarContent()),
        body: LayoutBuilder(builder: (context, constraints) {
          Axis direction =
              constraints.maxWidth < 500 ? Axis.vertical : Axis.horizontal;

          if (constraints.maxWidth < 800) {
            return Container(
              //padding: const EdgeInsets.all(15),
              color: theme.bgTertiary,
              child: Flex(
                direction: direction,
                children: const [
                  TightSidebar(),
                  SizedBox(
                    width: 1,
                    height: 1,
                  ),
                  ChatSection(),
                ],
              ),
            );
          } else {
            return Container(
              color: theme.bgTertiary,
              child: Row(
                children: [
                  Container(
                      width: 300,
                      padding: const EdgeInsets.all(Grid.paddingdesktop),
                      color: theme.bgPrimary,
                      child: const ChatSidebar()),
                  const SizedBox(
                    width: 1,
                  ),
                  const ChatSection(),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}



/*
appBar: AppBar(
        title: const Text('My App'),
      ),*/