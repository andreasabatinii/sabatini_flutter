import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/text/suggested_description.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/text/suggested_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestedButtonSecond extends StatelessWidget {
  const SuggestedButtonSecond ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
                      color: Colors.black, 
                      width: 0.2,         
                    ),
      ),
      child: Column(
        children: [
          SuggestedTitle(title: 'Explain superconductors'),
          SuggestedDescription(description: 'like I am five years old')
        ],
      ),
    );
  }
}