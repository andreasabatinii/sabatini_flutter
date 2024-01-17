import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChatComponent extends StatelessWidget {
  const UserChatComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFAEAEAE),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xFFFEA82F),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 10),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF101010),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text('Ciao',
                  style: GoogleFonts.sora(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))),
        ],
      ),
    );
  }
}
