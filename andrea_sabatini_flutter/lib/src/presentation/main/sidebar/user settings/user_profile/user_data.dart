import 'package:andrea_sabatini_flutter/src/presentation/widgets/border_radius.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/get_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/typography.dart';
import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData(
      {super.key,
      required this.planstatus,
      required this.username,
      required this.useremail});

  final String planstatus;
  final String username;
  final String useremail;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: theme.borderColor,
                    width: 1,
                  )
                  //color: Palette.lightblue,
                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/profile_photo.jpg', // Sostituisci con il percorso corretto del tuo file immagine
                  fit: BoxFit
                      .cover, // Puoi personalizzare la modalità di adattamento dell'immagine
                ),
              ),
            ),
            const SizedBox(width: Grid.medium),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(
                  username,
                  //textcolor: Palette.black,
                ),
                const SizedBox(height: 4),
                SmallParagraph(
                  useremail,
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: theme.blackBoxColor,
              borderRadius: br4,
            ),
            child: DetailsText(
              planstatus,
              //textcolor: Palette.white,
            ))
      ],
    );
  }
}
