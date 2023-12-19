//import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/suggested_button.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/input/input_field.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/suggested_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowerRow extends StatelessWidget {
  const LowerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: SuggestedButton(
                          title: 'Create a landing page',
                          description: 'for a restaurant'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: SuggestedButton(
                          title: 'Help me find books',
                          description: 'about graphic design'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Expanded(
                      child: SuggestedButton(
                          title: 'Help me get better',
                          description: 'for an interview'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: SuggestedButton(
                          title: 'Brainstorm names',
                          description: 'for a new galaxy'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [Expanded(child: InputField())],
                ),
                const SizedBox(height: 8),
                Text(
                  'ChatGPT can make mistakes. Consider checking important information',
                  style: GoogleFonts.sora(
                    color: const Color(0xFF8F8F8F),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
