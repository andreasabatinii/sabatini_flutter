import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile/button_upgrade.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile/user_data.dart';
import 'package:flutter/material.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

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
        child: const Column(
          children: [
            UserData(
                planstatus: 'Free',
                username: 'Andrea sabatini',
                useremail: 'a.sabatini@ied.edu'),
            SizedBox(height: 10),
            ButtonUpgrade()
          ],
        ));
  }
}
