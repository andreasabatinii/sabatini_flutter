// Tutti i testi si devono definire ad i componenti qui dentro
// COMPONENTI SOLO TESTO

import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlesText extends StatelessWidget {
  const TitlesText(this.title, {super.key, this.textcolor});
  final String title;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(title,
        style: GoogleFonts.sora(
          textStyle: theme.titlesTextStyle.copyWith(color: textcolor),
        ));
  }
}

class H1Title extends StatelessWidget {
  const H1Title(this.paragraph, {super.key, this.textcolor});
  final String paragraph;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(paragraph,
        style: GoogleFonts.sora(
          textStyle: theme.h1TextStyle.copyWith(color: textcolor),
        ));
  }
}

class H3Title extends StatelessWidget {
  const H3Title(this.paragraph,
      {super.key, this.textcolor, this.textalignment});
  final String paragraph;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;
  final TextAlign? textalignment;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(paragraph,
        style: GoogleFonts.sora(
          textStyle: theme.h3TextStyle.copyWith(
            color: textcolor,
          ),
          //TextAlign: textalignment,
        ));
  }
}

class BoldParagraph extends StatelessWidget {
  const BoldParagraph(this.paragraph, {super.key, this.textcolor});
  final String paragraph;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(paragraph,
        style: GoogleFonts.sora(
          textStyle: theme.boldparagraphTextStyle.copyWith(color: textcolor),
        ));
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.paragraph, {super.key, this.textcolor});
  final String paragraph;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(paragraph,
        style: GoogleFonts.sora(
          textStyle: theme.paragraphTextStyle.copyWith(color: textcolor),
        ));
  }
}

class SmallParagraph extends StatelessWidget {
  const SmallParagraph(this.paragraph, {super.key, this.textcolor});
  final String paragraph;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(paragraph,
        style: GoogleFonts.sora(
          textStyle: theme.smallParagraphTextStyle.copyWith(color: textcolor),
        ));
  }
}

class DetailsText extends StatelessWidget {
  const DetailsText(this.detailtext, {super.key, this.textcolor});
  final String detailtext;
  //creiamo un parametro OPZIONALE
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    //prendere un tema in qualsiasi parte dell'applicazione
    final theme = getTheme(context);
    return Text(detailtext,
        style: GoogleFonts.sora(
          textStyle: theme.smallParagraphTextStyle.copyWith(color: textcolor),
        ));
  }
}
