import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/chat_folder.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/options%20components/chat_options.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_settings.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class SidebarContent extends StatelessWidget {
  const SidebarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Palette.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Palette.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 14),
              const H1Title('Supermind')
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
            color: Palette.gray,
          ),
          const SizedBox(height: 16),
          const ChatFolder(),
          const SizedBox(height: 0),
          const UserSettingsContainer()
        ],
      ),
    );
  }
}
