import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/components/chat_options.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/chat_folder.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarContent extends StatelessWidget {
  const SidebarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: const Color(0xFF101010),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 14),
              Text(
                'SuperMind',
                style: GoogleFonts.sora(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const ChatOptions(),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: const Color.fromRGBO(255, 255, 255, 0.65),
          ),
          const SizedBox(height: 16),
          const ChatFolder(),
          const SizedBox(height: 0),
          const UserSettings()
        ],
      ),
    );
  }
}
