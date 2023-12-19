import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperRow extends StatelessWidget {
  const UpperRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 4),
          child: Text('ChatGPT',
              style: GoogleFonts.sora(
                  color: const Color(0xFF101010),
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          margin: const EdgeInsets.only(right: 2),
          child: Text('3.5',
              style: GoogleFonts.sora(
                  color: const Color(0xFF666666),
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        const Icon(
          Icons.expand_more,
          color: Color(0xFF666666),
          size: 21,
        ),
      ],
    );
  }
}
