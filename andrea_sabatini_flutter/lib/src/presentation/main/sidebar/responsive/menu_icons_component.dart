import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';

class MenuIconComponent extends StatelessWidget {
  const MenuIconComponent({super.key, required this.iconpath});

  final String iconpath;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(
          bottom: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: br6,
          color: theme.blackBoxColor,
          boxShadow: [
            BoxShadow(
              color: theme.borderColor, // Colore dell'ombra
              spreadRadius: 0, // Raggio di diffusione
              blurRadius: 0, // Raggio di sfocatura
              offset: const Offset(0, 1), // Offset (spostamento) dell'ombra
            ),
          ],
        ),
        child: SizedBox(
            height: IconHeight.small,
            child: Image.asset(iconpath, color: theme.whiteBoxColor)));
  }
}
