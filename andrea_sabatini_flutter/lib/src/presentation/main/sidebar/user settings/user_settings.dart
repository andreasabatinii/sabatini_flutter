import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_mode.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile.dart';
import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //width: double.infinity,
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: const Color(0xFF101010),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          children: [UserSection(), SizedBox(height: 6), UserModeSetting()],
        ));
  }
}
