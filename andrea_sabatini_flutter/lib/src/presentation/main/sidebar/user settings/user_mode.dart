import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_mode/user_mode_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';

class UserModeSetting extends StatelessWidget {
  const UserModeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => AdaptiveTheme.of(context).setLight(),
            child: const UserModeComponent(
                usermode: 'Light', iconpath: 'assets/icons/brightness.png'),
          ),
        ),
        const SizedBox(width: Grid.smallest),
        Expanded(
          child: GestureDetector(
              onTap: () => AdaptiveTheme.of(context).setDark(),
              child: const UserModeComponent(
                  usermode: 'Night', iconpath: 'assets/icons/moon.png')),
        )
      ],
    );
  }
}
