import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/ai_buttons_components.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AiChatComponent extends StatelessWidget {
  const AiChatComponent({super.key, required this.response});

  final String response;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xFFFEA82F),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      //color: const Palette.black,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Palette.black,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(response,
                              style: GoogleFonts.sora(
                                color: Palette.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    )),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const AiButtons(buttonaction: 'Copy'),
                    const AiButtons(buttonaction: 'Regenerate response'),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 7),
                      decoration: BoxDecoration(
                        color: Palette.black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: Color(0xFFFFFFFF),
                        size: 14,
                        weight: 100,
                        grade: -25,
                        opticalSize: 20.0,
                        fill: 0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
