//import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/rows/suggested/suggested_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowerRow extends StatelessWidget {
  const LowerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  
                  border: Border.all(
                      color: Colors.black, 
                      width: 0.2,         
                    ),
                ),
                
              ),
              Text(
                'ChatGPT can make mistakes. Consider checking important information',
                style: GoogleFonts.sora(
                  color: const Color(0xFF101010),
                  fontSize: 10,
                ),
              ),
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
    );
  }
}