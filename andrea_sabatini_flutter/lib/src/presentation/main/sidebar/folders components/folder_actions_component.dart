import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FolderActionsComponent extends StatelessWidget {
  const FolderActionsComponent(
      {super.key, required this.folderaction, required this.folderactionicon});

  final String folderaction;
  final IconData folderactionicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF212121), Color(0xFF3E3E3E)],
          ),
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
          Icon(
            folderactionicon,
            color: const Color(0xFFFFFFFF),
            size: 18,
            weight: 100,
            grade: -25,
            opticalSize: 20.0,
            fill: 0,
          ),
          const SizedBox(width: 12),
          Text(
            folderaction,
            style: GoogleFonts.sora(
              color: const Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
