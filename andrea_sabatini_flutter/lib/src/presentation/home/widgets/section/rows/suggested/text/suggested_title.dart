import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestedTitle extends StatelessWidget {
  const SuggestedTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.sora(
        color: const Palette.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
