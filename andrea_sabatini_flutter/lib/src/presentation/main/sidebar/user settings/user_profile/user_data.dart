import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserData extends StatelessWidget {
  const UserData(
      {super.key,
      required this.planstatus,
      required this.username,
      required this.useremail});

  final String planstatus;
  final String username;
  final String useremail;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username,
                    style: GoogleFonts.sora(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                //const SizedBox(height: 4),
                Text(useremail,
                    style: GoogleFonts.sora(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ))
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(planstatus,
              style: GoogleFonts.sora(
                color: const Color(0xFF101010),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )),
        )
      ],
    );
  }
}
