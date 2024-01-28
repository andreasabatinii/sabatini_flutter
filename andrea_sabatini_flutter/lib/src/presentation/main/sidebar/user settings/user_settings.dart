import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_mode.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class UserSettingsContainer extends StatelessWidget {
  const UserSettingsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        //width: double.infinity
        child: Column(
      children: [
        Container(
          height: 1,
          width: double.infinity,
          color: Palette.gray,
        ),
        const SizedBox(height: Grid.medium),
        const UserProfile(),
        const SizedBox(height: 6),
        const UserModeSetting()
      ],
    ));
  }
}
