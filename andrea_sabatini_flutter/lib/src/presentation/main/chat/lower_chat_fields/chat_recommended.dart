import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/component/recommended_components.dart';
import 'package:flutter/material.dart';

class ChatRecommended extends StatelessWidget {
  const ChatRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RecommendedComponent(
              suggestedinput: 'Something cool',
              iconsuggested: Icons.local_fire_department_outlined,
            ),
            SizedBox(width: 10),
            RecommendedComponent(
              suggestedinput: 'Code genarator',
              iconsuggested: Icons.code,
            ),
            SizedBox(width: 10),
            RecommendedComponent(
              suggestedinput: 'Summary',
              iconsuggested: Icons.note_add_outlined,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RecommendedComponent(
              suggestedinput: 'Video generator',
              iconsuggested: Icons.play_circle_outlined,
            ),
            SizedBox(width: 10),
            RecommendedComponent(
              suggestedinput: 'Audio genarator',
              iconsuggested: Icons.graphic_eq,
            ),
          ],
        )
      ],
    );
  }
}
