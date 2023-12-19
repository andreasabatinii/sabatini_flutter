import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SuggestedDescription extends StatelessWidget {
  const SuggestedDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: GoogleFonts.sora(
        color: const Color(0xFFd9d9e3),
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}