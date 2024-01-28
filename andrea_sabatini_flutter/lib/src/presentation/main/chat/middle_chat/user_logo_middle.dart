import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/components/square_profile.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class MiddleRowChat extends StatelessWidget {
  const MiddleRowChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareProfile(
              boxcolor: Palette.lightblue,
              imagepath: 'assets/profile_photo.jpg',
            ),
            SizedBox(width: 20),
            Icon(Icons.close),
            SizedBox(width: 20),
            SquareProfile(
              boxcolor: Palette.yellow,
              imagepath: 'assets/logo_supermind.jpeg',
            )
          ],
        ),
        SizedBox(height: 18),
        H3Title('How can we team up today Andrea?')
      ],
    );
  }
}
