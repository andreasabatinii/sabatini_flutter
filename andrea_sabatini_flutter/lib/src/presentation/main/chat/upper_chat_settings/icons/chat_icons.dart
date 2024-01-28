import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/icons/icon_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ChatIcons extends StatelessWidget {
  const ChatIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // print(constraints.maxWidth);
        double pageWidth = MediaQuery.of(context).size.width;

        if (pageWidth <= 550) {
          return const Row(
            children: [
              //SizedBox(width: Grid.medium),
              IconComponent(iconpath: 'assets/icons/circle-star.png'),
              SizedBox(width: Grid.medium),
              IconComponent(iconpath: 'assets/icons/wishlist-star.png'),
              SizedBox(width: Grid.medium),
              IconComponent(iconpath: 'assets/icons/trash-restore-alt.png'),
            ],
          );
        } else {
          return Row(
            children: [
              const IconComponent(iconpath: 'assets/icons/circle-star.png'),
              const SizedBox(width: Grid.medium),
              const IconComponent(iconpath: 'assets/icons/wishlist-star.png'),
              const SizedBox(width: Grid.medium),
              const IconComponent(
                  iconpath: 'assets/icons/trash-restore-alt.png'),
              const SizedBox(width: Grid.medium),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: Palette.black,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child:
                      const SmallParagraph('Share', textcolor: Palette.white))
            ],
          );
        }
      },
    );
  }
}
