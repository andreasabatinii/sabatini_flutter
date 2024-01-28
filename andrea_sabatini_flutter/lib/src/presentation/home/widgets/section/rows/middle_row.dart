import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black,
                  width: 0.2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/chat_gpt_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('How can I help you today?',
                style: GoogleFonts.sora(
                    color: const Palette.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600)),
          ],
        )
      ],
    );
  }
}
