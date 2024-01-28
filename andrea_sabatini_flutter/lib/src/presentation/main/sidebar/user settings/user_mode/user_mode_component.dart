import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class UserModeComponent extends StatelessWidget {
  const UserModeComponent(
      {super.key, required this.usermode, required this.iconpath});

  final iconpath;
  final String usermode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Palette.black,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Palette.lightblue,
            width: 1,
          ),
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: IconHeight.medium,
              child: Image.asset(
                iconpath,
                color: Palette.white,
              ),
            ),
            const SizedBox(width: Grid.xssmall),
            SmallParagraph(usermode, textcolor: Palette.white)
          ],
        ),
      ),
    );
  }
}
