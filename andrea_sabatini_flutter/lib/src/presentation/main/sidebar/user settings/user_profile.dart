import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile/button_upgrade.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/user%20settings/user_profile/user_data.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserData(
            planstatus: 'Free',
            username: 'Andrea sabatini',
            useremail: 'a.sabatini@ied.edu'),
        SizedBox(height: Grid.small),
        ButtonUpgrade()
      ],
    );
  }
}
