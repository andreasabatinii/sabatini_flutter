import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AiButtons extends StatelessWidget {
  const AiButtons({super.key, required this.buttonaction});

  final String buttonaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF101010),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(buttonaction,
          style: GoogleFonts.sora(
            color: const Color(0xFFFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w300,
          )),
    );
  }
}
