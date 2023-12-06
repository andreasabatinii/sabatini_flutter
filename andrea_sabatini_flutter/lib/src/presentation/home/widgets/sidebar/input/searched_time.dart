import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchedTime extends StatelessWidget {
  const SearchedTime({super.key, required this.time});

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 8),
        child: Text(
          time,
          style: GoogleFonts.sora(color: const Color(0xFF666666), fontSize: 12),
        ),
      ),
    );
  }
}
