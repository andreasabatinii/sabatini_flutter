import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ButtonUpgrade extends StatelessWidget {
  const ButtonUpgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: Grid.padmedium),
        decoration: BoxDecoration(
            gradient: Palette.greengradient,
            borderRadius: br8,
            border: Border.all(
              color: Palette.white,
              width: 1,
            )),
        child: const BoldParagraph('Upgrade to Pro'));
  }
}
