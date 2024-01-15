import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldChat extends StatelessWidget {
  const TextfieldChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFFFFFFF),
                border: Border.all(
                  color: const Color(0xFF101010),
                  width: 1,
                ),
              ),
              child: TextField(
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
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              print('Invia messaggio');
            },
            icon: const Icon(Icons.arrow_upward),
            color: const Color(0xFF101010),
            iconSize: 24,
          ),
        ],
      ),
    );
  }
}
