import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/chat_recommended.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/middle_chat/user_logo_middle.dart';
import 'package:flutter/material.dart';

class StarterChat extends StatelessWidget {
  const StarterChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const MiddleRowChat(),
        const Spacer(),
        if (MediaQuery.of(context).size.width >= 800) const ChatRecommended(),
      ],
    );
  }
}
