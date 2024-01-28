import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({super.key, required this.iconpath});

  final String iconpath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: IconHeight.medium,
      child: Image.asset(
        iconpath,
        color: Palette.black,
      ),
    );
  }
}
