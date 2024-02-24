import 'package:andrea_sabatini_flutter/src/presentation/main/chat/upper_chat_settings/icons/icon_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class ChatIcons extends StatelessWidget {
  const ChatIcons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: Grid.padsmall, vertical: Grid.padsmall),
                  decoration: BoxDecoration(
                    color: theme.blackBoxColor,
                    borderRadius: br6,
                  ),
                  child: const DetailsText(
                    'Share',
                  ))
            ],
          );
        }
      },
    );
  }
}
