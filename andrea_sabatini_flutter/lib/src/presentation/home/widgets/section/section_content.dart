import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Text('ChatGPT',
                        style: GoogleFonts.sora(
                            color: const Color(0xFF101010),
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Text('3.5',
                        style: GoogleFonts.sora(
                            color: const Color(0xFF666666),
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                  const Icon(
                    Icons.add_task,
                    color: Colors.black,
                    size: 21,
                  ),
                ],
              ),
              const Row()
            ],
          ),
        ),
      ],
    );
  }
}
