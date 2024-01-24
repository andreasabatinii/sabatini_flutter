import 'package:flutter/material.dart';

class MenuIconComponent extends StatelessWidget {
  const MenuIconComponent({super.key, required this.menuiconresponsive});

  final IconData menuiconresponsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF212121), Color(0xFF3E3E3E)],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFFFFFFF), // Colore dell'ombra
            spreadRadius: 0, // Raggio di diffusione
            blurRadius: 0, // Raggio di sfocatura
            offset: Offset(0, 1), // Offset (spostamento) dell'ombra
          ),
        ],
      ),
      child: Icon(
        menuiconresponsive,
        color: const Color(0xFFFFFFFF),
        size: 18,
        weight: 100,
        grade: -25,
        opticalSize: 20.0,
        fill: 0,
      ),
    );
  }
}
