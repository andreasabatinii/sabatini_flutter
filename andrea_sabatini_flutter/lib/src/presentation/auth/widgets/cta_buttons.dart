import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class CtaButton extends StatelessWidget {
  const CtaButton(
      {super.key,
      required this.ctatext,
      required this.iconpath,
      required this.gradient,
      this.iconcolor,
      this.textcolor});

  final String ctatext;
  final Gradient gradient;
  final String iconpath;
  final Color? iconcolor;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(Grid.medium),
        decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: br6,
            border: Border.all(color: Palette.black, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: IconHeight.medium,
              child: Image.asset(
                iconpath,
                color: iconcolor,
              ),
            ),
            const SizedBox(width: Grid.small),
            BoldParagraph(
              ctatext,
              textcolor: textcolor,
            ),
          ],
        ),
      ),
    );
  }
}
