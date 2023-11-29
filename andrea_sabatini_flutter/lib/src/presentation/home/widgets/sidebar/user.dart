import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), 
                  child: Image.asset(
                    'assets/profile_pic.jpg', 
                    width: 50,
                    height: 50,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('Andrea Sabatini', 
              style: GoogleFonts.sora(
                  color: Colors.white, 
                  fontSize: 14,
                  fontWeight: FontWeight.w400))
            ],
          );
  }
}