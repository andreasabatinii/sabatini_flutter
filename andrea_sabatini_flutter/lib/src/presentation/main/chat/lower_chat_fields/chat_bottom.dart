import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/textfield_chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomChatColumn extends StatelessWidget {
  const BottomChatColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //const ChatRecommended(),
        const SizedBox(height: 10),
        const TextfieldChat(),
        const SizedBox(height: 10),
        Text('SuperMind may make some mistakes. Nobody is perfect!',
            style: GoogleFonts.sora(
              color: const Color(0xFF101010),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ))
      ],
    );
  }
}
