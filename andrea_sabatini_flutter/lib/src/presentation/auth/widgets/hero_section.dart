import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xFF2F7470)),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'ChatAndrea',
                    style: GoogleFonts.sora(
                        color: const Color(0xFFE2D1F9),
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE2D1F9),
                        borderRadius: BorderRadius.circular(
                            20), // Imposta il border radius desiderato
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Chat',
                    style: GoogleFonts.sora(
                        color: const Color(0xFFE2D1F9),
                        fontSize: 56,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("to discover what's new",
                      style: GoogleFonts.sora(
                          color: const Color(0xFFE2D1F9),
                          fontSize: 36,
                          fontWeight: FontWeight.w500))
                ],
              ),
              const SizedBox(height: 50) //è un box vuoto
            ],
          ),
        ),
      ),
    );
  }
}
