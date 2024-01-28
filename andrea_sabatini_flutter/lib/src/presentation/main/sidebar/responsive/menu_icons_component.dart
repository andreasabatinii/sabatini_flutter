import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class MenuIconComponent extends StatelessWidget {
  const MenuIconComponent({super.key, required this.iconpath});

  final String iconpath;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(
          bottom: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: br6,
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
        child:
            SizedBox(height: IconHeight.small, child: Image.asset(iconpath)));
  }
}
