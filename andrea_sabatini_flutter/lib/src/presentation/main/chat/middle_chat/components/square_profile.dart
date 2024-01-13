import 'package:flutter/material.dart';

class SquareProfile extends StatelessWidget {
  const SquareProfile({super.key, required this.boxcolor});

  final Color boxcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: boxcolor,
        border: Border.all(
          color: const Color(0xFF101010),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
