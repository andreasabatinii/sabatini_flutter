import 'package:andrea_sabatini_flutter/src/presentation/home/blocs/chat_cubit.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldChat extends StatefulWidget {
  const TextfieldChat({super.key});

  @override
  State<TextfieldChat> createState() => _TextfieldChatState();
}

class _TextfieldChatState extends State<TextfieldChat> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: Palette.black,
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Message SuperMind...',
                      hintStyle: GoogleFonts.sora(
                        color: const Color(0xFFAEAEAE),
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (text) {
                      context.read<ChatCubitMain>().insert(text);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  context.read<ChatCubitMain>().insert(controller.text);
                },
                icon: const Icon(Icons.arrow_upward),
                color: Palette.black,
                iconSize: 24,
              ),
            ],
          ),
        );
      },
    );
  }
}
