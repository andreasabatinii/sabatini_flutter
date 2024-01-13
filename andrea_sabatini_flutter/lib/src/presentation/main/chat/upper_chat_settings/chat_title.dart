import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key, required this.chattitle});

  final String chattitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      chattitle,
      style: GoogleFonts.sora(
        color: const Color(0xFF101010),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
