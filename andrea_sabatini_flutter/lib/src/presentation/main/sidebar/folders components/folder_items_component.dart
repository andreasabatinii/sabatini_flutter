import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
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
    final theme = getTheme(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: Grid.padmedium,
            right: Grid.small,
            top: Grid.small,
            bottom: Grid.small,
          ),
          decoration: BoxDecoration(
            borderRadius: br8, color: theme.whiteBoxColor,
            boxShadow: [
              BoxShadow(
                color: theme.borderColor, // Colore dell'ombra
                spreadRadius: 0, // Raggio di diffusione
                blurRadius: 0, // Raggio di sfocatura
                offset: const Offset(0, 1), // Offset (spostamento) dell'ombra
              ),
            ],
            //boxShadow: const [ BoxShadow( color: Color(0xFFFFFFFF), spreadRadius: 0, blurRadius: 0, offset: Offset(-1, 0),),]
          ),
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
                  const SizedBox(width: Grid.medium),
                  Paragraph(foldername)
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
