import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class AiButtons extends StatelessWidget {
  const AiButtons({super.key, required this.buttonaction});

  final String buttonaction;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: Grid.small),
        padding: const EdgeInsets.symmetric(
            horizontal: Grid.padsmall, vertical: Grid.padsmall),
        decoration: BoxDecoration(
          color: Palette.black,
          borderRadius: br4,
        ),
        child: SmallParagraph(
          buttonaction,
          textcolor: Palette.white,
        ));
  }
}
