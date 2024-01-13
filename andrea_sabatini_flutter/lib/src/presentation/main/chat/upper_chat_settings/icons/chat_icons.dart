import 'package:flutter/material.dart';

class ChatIcons extends StatelessWidget {
  const ChatIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_outline,
          color: Color(0xFF101010),
          size: 18,
        ),
        const SizedBox(width: 25),
        const Icon(
          Icons.bookmark_outline,
          color: Color(0xFF101010),
          size: 18,
        ),
        const SizedBox(width: 25),
        const Icon(
          Icons.more_horiz,
          color: Color(0xFF101010),
          size: 18,
        ),
        const SizedBox(width: 25),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: const Text('Share'),
        )
      ],
    );
  }
}
