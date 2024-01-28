import 'package:andrea_sabatini_flutter/src/presentation/main/chat/lower_chat_fields/component/recommended_components.dart';
import 'package:flutter/material.dart';

class ChatRecommended extends StatelessWidget {
  const ChatRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double rowWidth = MediaQuery.of(context).size.width * 0.6;

      /*
      if (constraints.maxWidth < 400) {
        rowWidth = constraints.maxWidth;
      }
      */
      return Container(
        constraints: BoxConstraints(maxWidth: rowWidth),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //RecommendedComponent( suggestedinput: 'Something cool', iconsuggested: Icons.local_fire_department_outlined,),
                //SizedBox(width: 10),
                RecommendedComponent(
                  suggestedinput: 'Code genarator',
                  iconpath: 'assets/icons/laptop-code.png',
                ),
                SizedBox(width: 10),
                RecommendedComponent(
                  suggestedinput: 'Summary',
                  iconpath: 'assets/icons/text-box.png',
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RecommendedComponent(
                  suggestedinput: 'Video generator',
                  iconpath: 'assets/icons/camera-movie.png',
                ),
                SizedBox(width: 10),
                RecommendedComponent(
                  suggestedinput: 'Audio genarator',
                  iconpath: 'assets/icons/volume-down.png',
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
