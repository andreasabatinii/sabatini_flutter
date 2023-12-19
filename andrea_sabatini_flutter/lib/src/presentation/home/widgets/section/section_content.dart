import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/lower_row.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/middle_row.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/upper_row.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SectionContent extends StatelessWidget {
  const SectionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (MediaQuery.sizeOf(context).width <= 700)
          GestureDetector(
            onTap: () {
              if (!Scaffold.of(context).isDrawerOpen) {
                Scaffold.of(context).openDrawer();
              }
            },
            child: const Icon(Icons.menu, color: Colors.black, size: 21),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UpperRow(),
                MiddleRow(),
                LowerRow()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
