import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/ai_buttons_components.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class AiChatComponent extends StatelessWidget {
  const AiChatComponent({super.key, required this.response});

  final String response;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: LogoHeight.medium,
            height: LogoHeight.medium,
            decoration: BoxDecoration(
              //color: const Color(0xFFFEA82F),
              borderRadius: br6,
              border: Border.all(
                color: Palette.black,
                width: 1.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: br6,
              child: Image.asset(
                'assets/logo_supermind.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Grid.padmedium, vertical: Grid.padmedium),
                    decoration: BoxDecoration(
                      //color: const Palette.black,
                      borderRadius: br6,
                      border: Border.all(
                        color: theme.blackBoxColor,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(child: Paragraph(response)),
                      ],
                    )),
                const SizedBox(height: Grid.small),
                Row(
                  children: [
                    const AiButtons(buttonaction: 'Copy'),
                    const AiButtons(buttonaction: 'Regenerate response'),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Grid.padsmall, vertical: Grid.padsmall),
                      decoration: BoxDecoration(
                        color: Palette.black,
                        borderRadius: br4,
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: Color(0xFFFFFFFF),
                        size: 14,
                        weight: 100,
                        grade: -25,
                        opticalSize: 20.0,
                        fill: 0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
