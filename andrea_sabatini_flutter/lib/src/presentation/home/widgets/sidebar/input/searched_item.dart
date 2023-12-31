import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchedItem extends StatelessWidget {
  const SearchedItem({super.key, required this.input});

  final String input;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          input,
          style: GoogleFonts.sora(
            color: const Color(0xFFFFFFFF),
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
