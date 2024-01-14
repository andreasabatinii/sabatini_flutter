import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_mode/user_mode_component.dart';
import 'package:flutter/material.dart';

class UserModeSetting extends StatelessWidget {
  const UserModeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xFF3E3E3E),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFFFFFFF), // Colore dell'ombra
              spreadRadius: 0, // Raggio di diffusione
              blurRadius: 0, // Raggio di sfocatura
              offset: Offset(-1, 0), // Offset (spostamento) dell'ombra
            )
          ]),
      child: const Row(
        children: [
          UserModeComponent(
              usermode: 'Light', usermodeicon: Icons.light_mode_outlined),
          SizedBox(width: 8),
          UserModeComponent(
              usermode: 'Night', usermodeicon: Icons.dark_mode_outlined)
        ],
      ),
    );
  }
}
