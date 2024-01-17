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
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  //color: const Color(0xFF101010),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xFF101010),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(response,
                          style: GoogleFonts.sora(
                            color: const Color(0xFF101010),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
