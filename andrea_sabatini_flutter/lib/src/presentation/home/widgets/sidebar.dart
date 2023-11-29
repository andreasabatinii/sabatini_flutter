import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/upper_menu.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF101010),
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              UpperMenu(),
              Expanded(child: ListView()),
              User()
            ],
          ),
        ));
  }
}
