import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class FolderActionsComponent extends StatelessWidget {
  const FolderActionsComponent(
      {super.key, required this.folderaction, required this.folderactionicon});

  final String folderaction;
  final IconData folderactionicon;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(borderRadius: br8, color: theme.blackBoxColor
          //gradient: Palette.greengradient
          //boxShadow: const [BoxShadow(color: Color(0xFFFFFFFF), spreadRadius: 0, blurRadius: 0, offset: Offset(-1, 0),),]
          ),
      child: Row(
        children: [
          Icon(
            folderactionicon,
            color: theme.whiteBoxColor,
            size: 18,
            weight: 100,
            grade: -25,
            opticalSize: 20.0,
            fill: 0,
          ),
          const SizedBox(width: Grid.small),
          BoldParagraph(
            folderaction,
            //textcolor: Palette.white,
          )
        ],
      ),
    );
  }
}
