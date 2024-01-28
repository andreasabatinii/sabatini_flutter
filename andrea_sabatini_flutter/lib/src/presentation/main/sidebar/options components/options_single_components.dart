/*
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatOptionsComponents extends StatelessWidget {
  const ChatOptionsComponents(
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
        left: Grid.padmedium,
        right: Grid.small,
        top: Grid.small,
        bottom: Grid.small,
      ),
      decoration: BoxDecoration(
        borderRadius: br8,
        color: Palette.lightgray,
        boxShadow: const [
          BoxShadow(
            color: Palette.black, // Colore dell'ombra
            spreadRadius: 0, // Raggio di diffusione
            blurRadius: 0, // Raggio di sfocatura
            offset: Offset(0, 1), // Offset (spostamento) dell'ombra
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                optionsicon,
                color: const Color(0xFFFFFFFF),
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
                  color: const Color(0xFFFFFFFF),
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
              color: const Color.fromRGBO(255, 255, 255, 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              shortcut,
              style: GoogleFonts.sora(
                color: const Color(0xFFFFFFFF),
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
          )
        ],
      ),
    );
  }
}

*/

/*

children: [
            Text(
              suggestedinput,
              style: GoogleFonts.sora(
                color: const Palette.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              iconsuggested,
              color: const Palette.black,
              size: 21,
              weight: 100,
              grade: -25,
              opticalSize: 20.0,
              fill: 0,
            )
          ],

*/