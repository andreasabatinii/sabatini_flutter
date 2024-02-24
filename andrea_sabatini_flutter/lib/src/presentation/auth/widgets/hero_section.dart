import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    //final theme = getTheme(context);
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background_auth.jpg'), // Sostituisci con il percorso corretto dell'immagine
            fit: BoxFit
                .cover, // Puoi regolare la modalità di adattamento dell'immagine
          ),
        ),
        padding: const EdgeInsets.all(Grid.paddingauthbig),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const LinearGradient(
                          colors: [Palette.pink, Palette.lightblue],
                        ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    child: const H1Title(
                      'Supermind\nBest ChatGTP Alternative',
                    )),
                const SizedBox(
                  height: Grid.medium,
                ),
                const WhiteParagraph(
                  'It is like ChatGPT but more friendly and easy going.\nIt is funny to chat with Supermind.',
                  textalignment: TextAlign.left,
                  textcolor: Palette.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
