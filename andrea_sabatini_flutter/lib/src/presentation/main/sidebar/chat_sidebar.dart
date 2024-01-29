import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/chat_folder.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/options%20components/chat_options.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_settings.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ChatSidebar extends StatelessWidget {
  const ChatSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  //color: Palette.yellow,
                  borderRadius: br6,
                  border: Border.all(color: Palette.white, width: 1)),
              child: ClipRRect(
                borderRadius: br6,
                child: Image.asset(
                  'assets/logo_supermind.jpeg', // Sostituisci con il percorso corretto del tuo file immagine
                  fit: BoxFit
                      .cover, // Puoi personalizzare la modalità di adattamento dell'immagine
                ),
              ),
            ),
            const SizedBox(width: 14),
            const H2Title(
              'Supermind',
              //textcolo: theme.h2TextStyle,
            )
          ],
        ),

        const SizedBox(
          height: Grid.medium,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: theme.blackBoxColor,
        ),
        const SizedBox(
          height: Grid.small,
        ),
        const ChatOptions(),
        const SizedBox(
          height: Grid.medium,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: theme.blackBoxColor,
        ),
        const SizedBox(height: Grid.medium),
        const ChatFolder(),
        //const SizedBox(height: 0),
        const UserSettingsContainer()
      ],
    );
  }
}
