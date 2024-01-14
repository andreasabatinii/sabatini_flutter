import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserModeComponent extends StatelessWidget {
  const UserModeComponent(
      {super.key, required this.usermode, required this.usermodeicon});

  final IconData usermodeicon;
  final String usermode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF101010),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFFFFFFF),
            width: 1,
          ),
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              usermodeicon,
              color: const Color(0xFFFFFFFF),
              size: 21,
              weight: 100,
              grade: -25,
              opticalSize: 20.0,
              fill: 0,
            ),
            const SizedBox(width: 8),
            Text(usermode,
                style: GoogleFonts.sora(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }
}
