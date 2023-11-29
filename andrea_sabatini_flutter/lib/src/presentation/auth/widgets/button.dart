import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: const Color(0xFFF15025),
          borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.sora(color: const Color(0xFFFFFFFF), fontSize: 16),
        ),
      ),
    );
  }
}
