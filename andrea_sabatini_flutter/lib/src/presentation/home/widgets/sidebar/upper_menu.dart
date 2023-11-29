import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UpperMenu extends StatelessWidget {
  const UpperMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset(
                    'assets/chat_gpt_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('New Chat',
                style: GoogleFonts.sora(
                  color: Colors.white, 
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
              const Spacer(),
              const Icon(Icons.add_task,
              color: Colors.white,
              size: 21,),
            ],
          );
  }
}