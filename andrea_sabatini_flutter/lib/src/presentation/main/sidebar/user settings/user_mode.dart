import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_mode/user_mode_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';

class UserModeSetting extends StatelessWidget {
  const UserModeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        UserModeComponent(
            usermode: 'Light', iconpath: 'assets/icons/brightness.png'),
        SizedBox(width: Grid.smallest),
        UserModeComponent(usermode: 'Night', iconpath: 'assets/icons/moon.png')
      ],
    );
  }
}
