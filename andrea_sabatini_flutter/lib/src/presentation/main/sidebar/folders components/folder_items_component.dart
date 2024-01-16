import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FolderItemsComponents extends StatelessWidget {
  const FolderItemsComponents(
      {super.key,
      required this.chatnumber,
      required this.foldername,
      required this.foldercolor});

  final String chatnumber;
  final String foldername;
  final Color foldercolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 16,
            right: 8,
            top: 8,
            bottom: 8,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
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
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: foldercolor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(foldername,
                      style: GoogleFonts.sora(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.15),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(chatnumber,
                    style: GoogleFonts.sora(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
