import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ButtonUpgrade extends StatelessWidget {
  const ButtonUpgrade({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: Grid.padmedium),
        decoration: BoxDecoration(
            gradient: theme.buttonColor,
            borderRadius: br8,
            border: Border.all(
              color: theme.borderColor,
              width: 1,
            )),
        child: const BoldParagraph(
          'Upgrade to Pro',
          textcolor: Palette.black,
        ));
  }
}
