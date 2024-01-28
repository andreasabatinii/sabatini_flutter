import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestedButton extends StatelessWidget {
  const SuggestedButton(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black,
          width: 0.2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.sora(
                color: const Palette.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.sora(
                color: const Color(0xFF8F8F8F),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
