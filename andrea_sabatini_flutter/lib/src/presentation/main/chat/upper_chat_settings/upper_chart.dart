import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/chat_title.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/icons/chat_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperChat extends StatelessWidget {
  const UpperChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xffAEAEAE))),
          ),
          padding: const EdgeInsets.only(bottom: 16),
          child: const Row(
            children: [
              ChatTitle(
                chattitle: "Lets' start a new chat",
              ),
              Spacer(),
              ChatIcons()
            ],
          ),
        ),
        const SizedBox(height: 16),
        Text('Chats >> Learning IED',
            style: GoogleFonts.sora(
              color: const Color(0xFFAEAEAE),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ))
      ],
    );
  }
}
