import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedComponent extends StatelessWidget {
  const RecommendedComponent(
      {super.key, required this.suggestedinput, required this.iconsuggested});

  final String suggestedinput;
  final IconData iconsuggested;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        //color: const Color(0xFF101010),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF101010), // Colore dell'ombra
              spreadRadius: 0, // Raggio di diffusione
              blurRadius: 0, // Raggio di sfocatura
              offset: Offset(-1, 1), // Offset (spostamento) dell'ombra
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              suggestedinput,
              style: GoogleFonts.sora(
                color: const Color(0xFF101010),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              iconsuggested,
              color: const Color(0xFF101010),
              size: 21,
              weight: 100,
              grade: -25,
              opticalSize: 20.0,
              fill: 0,
            )
          ],
        ));
  }
}

/*


class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key, required this.chattitle});

  final String chattitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      chattitle,
      style: GoogleFonts.sora(
        color: const Color(0xFF101010),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
*/