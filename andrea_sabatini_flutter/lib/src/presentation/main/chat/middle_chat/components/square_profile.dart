import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class SquareProfile extends StatelessWidget {
  const SquareProfile(
      {super.key, required this.boxcolor, required this.imagepath});

  final Color boxcolor;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: boxcolor,
        border: Border.all(
          color: Palette.black,
          width: 1.0,
        ),
        borderRadius: br8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          imagepath, // Sostituisci con il percorso corretto del tuo file immagine
          fit: BoxFit
              .cover, // Puoi personalizzare la modalità di adattamento dell'immagine
        ),
      ),
    );
  }
}
