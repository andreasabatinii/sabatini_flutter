import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class RecommendedComponent extends StatelessWidget {
  const RecommendedComponent(
      {super.key, required this.suggestedinput, required this.iconpath});

  final String suggestedinput;
  final String iconpath;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Expanded(
      child: Container(
          //width: 250,
          //color: const Palette.black,
          padding: const EdgeInsets.all(Grid.padmedium),
          decoration: BoxDecoration(
            borderRadius: br8,
            color: theme.whiteBoxColor,
            boxShadow: [
              BoxShadow(
                color: theme.borderColor, // Colore dell'ombra
                spreadRadius: 0, // Raggio di diffusione
                blurRadius: 0, // Raggio di sfocatura
                offset: const Offset(-1, 1), // Offset (spostamento) dell'ombra
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Paragraph(suggestedinput),
              const SizedBox(width: Grid.small),
              SizedBox(
                height: IconHeight.small,
                child: Image.asset(
                  iconpath,
                  color: theme.blackBoxColor,
                ),
              )
            ],
          )),
    );
  }
}

/*


class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key, required this.chattitle});

  final String chattitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      chattitle,
      style: GoogleFonts.sora(
        color: const Palette.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
*/