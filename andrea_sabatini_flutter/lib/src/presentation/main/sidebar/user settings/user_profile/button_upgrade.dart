import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonUpgrade extends StatelessWidget {
  const ButtonUpgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: const Color(0xFF20F585),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFFFFFFF),
              width: 2,
            )),
        child: Text(
          'Upgrade to Pro',
          style: GoogleFonts.sora(
            color: const Color(0xFF101010),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}
