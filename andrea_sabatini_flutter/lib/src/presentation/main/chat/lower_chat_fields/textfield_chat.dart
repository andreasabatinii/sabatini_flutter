//import 'package:andrea_sabatini_flutter/src/presentation/home/blocs/chat_cubit.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/blocs/chat_cubit_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldChat extends StatefulWidget {
  const TextfieldChat({super.key});

  @override
  State<TextfieldChat> createState() => _TextfieldChatState();
}

class _TextfieldChatState extends State<TextfieldChat> {
  TextEditingController sendMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        double rowWidth = MediaQuery.of(context).size.width * 0.6;

        // Se la larghezza dello schermo è inferiore a 800 px, imposta la larghezza al 100%
        if (constraints.maxWidth < 800) {
          rowWidth = constraints.maxWidth;
        }

        return SizedBox(
          width: rowWidth,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: theme.whiteBoxColor,
                    border: Border.all(
                      color: theme.borderColor,
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: sendMessage,
                    decoration: InputDecoration(
                      hintText: 'Message SuperMind...',
                      hintStyle: GoogleFonts.sora(
                        color: theme.blackBoxColor,
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: theme.whiteBoxColor,
                      border: InputBorder.none,
                    ),
                    onSubmitted: (messages) {
                      String message = sendMessage.text;
                      if (message != '') {
                        context.read<ChatCubitMain>().insert(message);
                        sendMessage.clear();
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  String message = sendMessage.text;
                  if (message != '') {
                    context.read<ChatCubitMain>().insert(message);
                    sendMessage.clear();
                  }
                  //context.read<ChatCubitMain>().insert(sendMessage.text);
                },
                icon: const Icon(Icons.arrow_upward),
                color: theme.blackBoxColor,
                iconSize: 24,
              ),
            ],
          ),
        );
      },
    );
  }
}
