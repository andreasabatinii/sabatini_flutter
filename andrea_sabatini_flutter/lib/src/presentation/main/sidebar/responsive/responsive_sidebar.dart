import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/responsive/menu_icons_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class TightSidebar extends StatelessWidget {
  const TightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    Axis directionmenu = MediaQuery.of(context).size.width < 500
        ? Axis.horizontal
        : Axis.vertical;

    return Container(
      padding: const EdgeInsets.all(20),
      color: theme.whiteBoxColor,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: directionmenu,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: br6,
                border: Border.all(color: theme.borderColor, width: 1)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/logo_supermind.jpeg', // Sostituisci con il percorso corretto del tuo file immagine
                  fit: BoxFit
                      .cover, // Puoi personalizzare la modalità di adattamento dell'immagine
                )),
          ),
          //const SizedBox(height: Grid.small),
          //const SizedBox(height: Grid.small),
          const Spacer(),
          if (MediaQuery.sizeOf(context).width <= 800)
            GestureDetector(
              onTap: () {
                if (!Scaffold.of(context).isDrawerOpen) {
                  Scaffold.of(context).openDrawer();
                }
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  //margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: theme.blackBoxColor,
                    borderRadius: br6,
                    boxShadow: const [
                      BoxShadow(
                        color: Palette.lightblue, // Colore dell'ombra
                        spreadRadius: 0, // Raggio di diffusione
                        blurRadius: 0, // Raggio di sfocatura
                        offset: Offset(0, 1), // Offset (spostamento) dell'ombra
                      ),
                    ],
                  ),
                  child: SizedBox(
                    height: IconHeight.xssmall,
                    child: Image.asset(
                      'assets/icons/angle-double-right.png',
                      color: theme.whiteBoxColor,
                    ),
                  )),
            ),
          //const SizedBox(height: 10),
          if (MediaQuery.of(context).size.width >= 500) const Spacer(),
          if (MediaQuery.of(context).size.width >= 500)
            const SizedBox(height: 10),
          if (MediaQuery.of(context).size.width >= 500)
            Flex(
              direction: directionmenu,
              children: const [
                MenuIconComponent(iconpath: 'assets/icons/messages.png'),
                MenuIconComponent(iconpath: 'assets/icons/circle-star.png'),
                MenuIconComponent(iconpath: 'assets/icons/discover.png'),
                MenuIconComponent(iconpath: 'assets/icons/api.png')
              ],
            )
        ],
      ),
    );
  }
}
