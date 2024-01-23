import 'package:flutter/material.dart';

class AiChatComponent extends StatelessWidget {
  const AiChatComponent(
      {super.key, //2
      required this.label});

  //1, aggiunge il parametro
  final String label;

  @override
  Widget build(BuildContext context) {
    //3
    return Text(label);
  }
}
