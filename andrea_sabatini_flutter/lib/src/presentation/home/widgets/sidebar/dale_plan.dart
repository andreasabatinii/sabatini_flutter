import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DalePlan extends StatelessWidget {
  const DalePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 10, left: 16, right: 16),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.verified_outlined,
              color: Colors.white,
              size: 21,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upgrade Plan',
                  style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text('Get GTP-4, DALL-E, and more',
                    style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
