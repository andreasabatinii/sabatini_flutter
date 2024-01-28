// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class Palette {
  /// Brand gradient colors
  static const black = Color(0xFF101010);
  static const black15 = Color.fromRGBO(0, 0, 0, 0.15);
  static const darkgray = Color(0xFF3E3E3E);
  static const gray = Color(0xFFAEAEAE);
  static const lightgray = Color(0xFFF5F5F5);
  static const white = Color(0xFFFFFFFF);
  static const white15 = Color.fromRGBO(255, 255, 255, 0.15);
  static const green = Color(0xFF20F585);
  static const lightblue = Color(0xFF00E3FD);
  static const red = Color(0xFFFC365E);
  static const pink = Color(0xFFFF72F1);
  static const yellow = Color(0xFFFEA82F);

  static const blackgradient = LinearGradient(
    colors: [Palette.black, Palette.gray],
  );
  static const greengradient = LinearGradient(
    colors: [Palette.lightblue, Palette.green],
  );
}

//definisco le variabili di testo
const h1TextStyle = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w700,
  height: null,
);
const h3TextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
  height: null,
);
const titlesTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  height: null,
);
const boldparagraphTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0,
  height: null,
);
const paragraphTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  height: null,
);
const smallParagraphTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  height: null,
);
const detailTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w300,
  letterSpacing: 0,
  height: null,
);

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    //usato per il BG della Chat e della sidebar
    required this.bgPrimary,
    //usato per il BG del contenitore della Chat
    required this.bgSecondary,
    //usato per il bottone CTA Upgrade to pro ed altri "hover" su bottoni"
    required this.buttonColor,
    //usato per il nome della chat
    required this.titlesTextStyle,
    //usato per Testi "grandi"
    required this.h1TextStyle,
    //usato per CTA
    required this.h3TextStyle,
    //usato per elementi di testo normali
    required this.boldparagraphTextStyle,
    required this.paragraphTextStyle,
    //usato per elementi di testo meno importanti
    required this.smallParagraphTextStyle,
    //usato per elementi di testo molto piccoli, per i dettagli
    required this.detailTextStyle,
  });

  final Color bgPrimary;
  final Color bgSecondary;

  final Gradient buttonColor;

  final TextStyle titlesTextStyle;
  final TextStyle h1TextStyle;
  final TextStyle h3TextStyle;
  final TextStyle boldparagraphTextStyle;
  final TextStyle paragraphTextStyle;
  final TextStyle smallParagraphTextStyle;
  final TextStyle detailTextStyle;

  @override
  AppTheme copyWith({
    Color? bgPrimary,
    Color? bgSecondary,
    Gradient? buttonColor,
    TextStyle? titleTextStyle,
    TextStyle? h1TextStyle,
    TextStyle? h3TextStyle,
    TextStyle? boldparagraphTextStyle,
    TextStyle? paragraphTextStyle,
    TextStyle? smallParagraphTextStyle,
    TextStyle? detailTextStyle,
  }) =>
      AppTheme(
        bgPrimary: bgPrimary ?? this.bgPrimary,
        bgSecondary: bgSecondary ?? this.bgSecondary,
        buttonColor: buttonColor ?? this.buttonColor,
        titlesTextStyle: titleTextStyle ?? titlesTextStyle,
        h1TextStyle: h1TextStyle ?? this.h1TextStyle,
        h3TextStyle: h3TextStyle ?? this.h3TextStyle,
        boldparagraphTextStyle:
            boldparagraphTextStyle ?? this.boldparagraphTextStyle,
        paragraphTextStyle: paragraphTextStyle ?? this.paragraphTextStyle,
        smallParagraphTextStyle:
            smallParagraphTextStyle ?? this.smallParagraphTextStyle,
        detailTextStyle: detailTextStyle ?? this.detailTextStyle,
      );

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t) ?? Colors.white,
      bgSecondary:
          Color.lerp(bgSecondary, other.bgSecondary, t) ?? Palette.lightgray,
      buttonColor: Gradient.lerp(buttonColor, other.buttonColor, t) ??
          Palette.greengradient,
      h1TextStyle: TextStyle.lerp(h1TextStyle, other.h1TextStyle, t) ??
          const TextStyle(),
      titlesTextStyle: TextStyle.lerp(h1TextStyle, other.h1TextStyle, t) ??
          const TextStyle(),
      h3TextStyle: TextStyle.lerp(h3TextStyle, other.h3TextStyle, t) ??
          const TextStyle(),
      boldparagraphTextStyle: TextStyle.lerp(
              boldparagraphTextStyle, other.boldparagraphTextStyle, t) ??
          const TextStyle(),
      paragraphTextStyle:
          TextStyle.lerp(paragraphTextStyle, other.paragraphTextStyle, t) ??
              const TextStyle(),
      smallParagraphTextStyle: TextStyle.lerp(
              smallParagraphTextStyle, other.smallParagraphTextStyle, t) ??
          const TextStyle(),
      detailTextStyle:
          TextStyle.lerp(detailTextStyle, other.detailTextStyle, t) ??
              const TextStyle(),
    );
  }
}

final lightTheme = AppTheme(
  bgPrimary: const Color(0xFFf8f8f8),
  bgSecondary: const Color(0xFFf1f1f1),
  buttonColor: Palette.greengradient,
  titlesTextStyle: titlesTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  h1TextStyle: h1TextStyle.copyWith(
    color: Palette.black,
  ),
  h3TextStyle: h3TextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  boldparagraphTextStyle: boldparagraphTextStyle.copyWith(
    color: Palette.black,
  ),
  paragraphTextStyle: paragraphTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  smallParagraphTextStyle: smallParagraphTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  detailTextStyle: detailTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
);

final darkTheme = AppTheme(
  bgPrimary: const Color(0xFFf8f8f8),
  bgSecondary: const Color(0xFFf1f1f1),
  buttonColor: Palette.greengradient,
  titlesTextStyle: titlesTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  h1TextStyle: h1TextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  h3TextStyle: h3TextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  boldparagraphTextStyle: boldparagraphTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  paragraphTextStyle: paragraphTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  smallParagraphTextStyle: smallParagraphTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
  detailTextStyle: detailTextStyle.copyWith(
    color: const Color(0xFF020202),
  ),
);
