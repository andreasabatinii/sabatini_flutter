import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class UserChatComponent extends StatelessWidget {
  const UserChatComponent({super.key, required this.inputtext});

  final String inputtext;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: Grid.padmedium, vertical: Grid.padmedium),
                decoration: BoxDecoration(
                  color: theme.blackBoxColor,
                  borderRadius: br6,
                ),
                child: Expanded(
                    child: Paragraph(
                  inputtext,
                  textcolor: Palette.white,
                  textalignment: TextAlign.right,
                ))),
          ),
          const SizedBox(width: 10),
          Container(
            width: LogoHeight.medium,
            height: LogoHeight.medium,
            decoration: BoxDecoration(
              borderRadius: br6,
              border: Border.all(
                color: Palette.black, // colore del bordo
                width: 1.0, // spessore del bordo
              ),
            ),
            child: ClipRRect(
              borderRadius: br6,
              child: Image.asset(
                'assets/profile_photo.jpg', // Sostituisci con il percorso corretto del tuo file immagine
                fit: BoxFit
                    .cover, // Puoi personalizzare la modalità di adattamento dell'immagine
              ),
            ),
          ),
        ],
      ),
    );
  }
}
