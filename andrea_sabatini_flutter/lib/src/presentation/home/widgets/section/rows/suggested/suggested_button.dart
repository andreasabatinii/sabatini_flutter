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
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 0.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.sora(
              color: const Color(0xFF101010),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            description,
            style: GoogleFonts.sora(
              color: const Color(0xFFd9d9e3),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
