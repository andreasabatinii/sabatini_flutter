import 'package:andrea_sabatini_flutter/src/presentation/auth/widgets/button.dart';
import 'package:andrea_sabatini_flutter/src/presentation/auth/widgets/cta_buttons.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(Grid.paddingauthbig),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(width: Grid.small),
              const H2Title('Supermind'),
            ],
          ),
          IntrinsicHeight(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 400.0, // Altezza massima desiderata
              ),
              child: Container(
                child: (Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      children: [
                        H3Title('Get Started!'),
                        SizedBox(
                          height: Grid.small,
                        ),
                        Paragraph(
                          'Enter your email and password to access your account',
                          textalignment: TextAlign.center,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: Grid.medium,
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 400,
                      ),
                      child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Palette.black),
                    ),
                    const SizedBox(
                      height: Grid.medium,
                    ),
                    const Column(
                      children: [
                        ButtonField(
                            requiredinput: 'Email',
                            inputenter: 'Enter you email...'),
                        ButtonField(
                            requiredinput: 'Password',
                            inputenter: 'Enter you password...'),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CtaButton(
                      ctatext: 'Sign In',
                      iconpath: 'assets/icons/sign-in-alt.png',
                      iconcolor: Palette.white,
                      gradient: Palette.graygradient,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CtaButton(
                      ctatext: 'Sign in with Google',
                      iconpath: 'assets/icons/google.png',
                      //iconcolor: Palette.white,
                      gradient: Palette.whitegradient,
                      textcolor: Palette.black,
                    ),
                  ],
                )),
              ),
            ),
          ),
          //const Spacer(),
          //const Spacer(),
          const SmallParagraph('Don\'t have an account? Sign in')
        ],
      ),
    ));
  }
}
