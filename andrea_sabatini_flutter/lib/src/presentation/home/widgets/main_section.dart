import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/section/section_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        const SectionContent(),
        //const SectionContent(),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
              width: 28,
              height: 28,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFFf1f1f1),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color.fromARGB(255, 173, 173, 173),
                    width: 0.5,
                  )),
              child: Text(
                '?',
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              )),
        )
      ],
    ));
  }
}
