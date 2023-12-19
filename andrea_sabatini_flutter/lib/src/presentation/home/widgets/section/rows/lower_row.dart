//import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/suggested_button.dart';
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
                          title: 'Brainstorm names',
                          description: 'for a new galaxy'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: SuggestedButton(
                          title: 'Funziona', description: 'ciao'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                    ))
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'ChatGPT can make mistakes. Consider checking important information',
                  style: GoogleFonts.sora(
                    color: const Color(0xFF101010),
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
