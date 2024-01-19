import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChatComponent extends StatelessWidget {
  const UserChatComponent({super.key, required this.inputtext});

  final String inputtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF101010),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(inputtext,
                  style: GoogleFonts.sora(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))),
          const SizedBox(width: 10),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xFF3A72FF),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
