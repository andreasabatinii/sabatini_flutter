import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/components/square_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleRowChat extends StatelessWidget {
  const MiddleRowChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareProfile(boxcolor: Color(0xFF3A72FF)),
            SizedBox(width: 20),
            Icon(Icons.close),
            SizedBox(width: 20),
            SquareProfile(boxcolor: Color(0xFFFEA82F))
          ],
        ),
        const SizedBox(height: 18),
        Text(
          'How can we team up today Andrea?',
          textAlign: TextAlign.center,
          style: GoogleFonts.sora(
            color: const Color(0xFF101010),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
