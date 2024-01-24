import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatIcons extends StatelessWidget {
  const ChatIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // print(constraints.maxWidth);
        if (constraints.maxWidth >= 800) {
          return const Row(
            children: [
              Icon(
                Icons.star_outline,
                color: Color(0xFF101010),
                size: 22,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.bookmark_outline,
                color: Color(0xFF101010),
                size: 20,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.more_horiz,
                color: Color(0xFF101010),
                size: 20,
              ),
            ],
          );
        } else {
          return Row(
            children: [
              const Icon(
                Icons.star_outline,
                color: Color(0xFF101010),
                size: 22,
              ),
              const SizedBox(width: 25),
              const Icon(
                Icons.bookmark_outline,
                color: Color(0xFF101010),
                size: 20,
              ),
              const SizedBox(width: 25),
              const Icon(
                Icons.more_horiz,
                color: Color(0xFF101010),
                size: 20,
              ),
              const SizedBox(width: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF101010),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  'Share',
                  style: GoogleFonts.sora(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          );
        }
      },
    );
  }
}
