import 'package:flutter/material.dart';

class UserChatComponent extends StatelessWidget {
  const UserChatComponent({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
