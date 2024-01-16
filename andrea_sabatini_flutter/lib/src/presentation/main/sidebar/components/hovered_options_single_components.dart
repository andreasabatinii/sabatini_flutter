import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoveredChatOptionsComponents extends StatelessWidget {
  const HoveredChatOptionsComponents(
      {super.key,
      required this.optionsicon,
      required this.chatoptionsname,
      required this.shortcut});

  final String shortcut;
  final String chatoptionsname;
  final IconData optionsicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 8,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xFFFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFFFFFFF), // Colore dell'ombra
              spreadRadius: 0, // Raggio di diffusione
              blurRadius: 0, // Raggio di sfocatura
              offset: Offset(-1, 0), // Offset (spostamento) dell'ombra
            ),
          ]),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                optionsicon,
                color: const Color(0xFF101010),
                size: 18,
                weight: 100,
                grade: -25,
                opticalSize: 20.0,
                fill: 0,
              ),
              const SizedBox(width: 16),
              Text(
                chatoptionsname,
                style: GoogleFonts.sora(
                  color: const Color(0xFF101010),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              shortcut,
              style: GoogleFonts.sora(
                color: const Color(0xFF101010),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*

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

          */