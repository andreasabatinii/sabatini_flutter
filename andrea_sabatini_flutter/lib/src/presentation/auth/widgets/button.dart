import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  const ButtonField(
      {super.key, required this.requiredinput, required this.inputenter});

  final String requiredinput;
  final String inputenter;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Paragraph(requiredinput),
          const SizedBox(
            height: Grid.small,
          ),
          Container(
              margin: const EdgeInsets.only(bottom: Grid.medium),
              width: double.infinity,
              padding: const EdgeInsets.all(Grid.padmedium),
              decoration: BoxDecoration(
                  color: Palette.lightgray,
                  borderRadius: br6,
                  border: Border.all(color: Palette.black, width: 1)),
              child: SmallParagraph(
                inputenter,
                textcolor: Palette.gray,
              )),
        ],
      ),
    );
  }
}
