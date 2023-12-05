import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/input/searched_item.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/input/searched_time.dart';
import 'package:flutter/material.dart';

class ListviewMenu extends StatelessWidget {
  const ListviewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        children: const [
          SearchedTime(time: 'Yesterday'),
          SearchedItem(input: 'Social Strategy'),
          SearchedItem(input: 'Flutter Tutorial'),
          //separatore
          SearchedTime(time: 'Previous 7 days'),
          SearchedItem(input: 'Awwwards Course'),
          SearchedItem(input: 'Web app ideas'),
          SearchedItem(input: 'Figma tips'),
          //separatore
          SearchedTime(time: 'Previous 30 days'),
          SearchedItem(input: 'Python Error'),
          SearchedItem(input: 'Solving problem with code'),
          SearchedItem(input: 'Flutter Installation'),
          SearchedItem(input: 'Base HTML structure'),
          //separatore
          SearchedTime(time: 'October'),
          SearchedItem(input: 'Javascript Transition'),
          SearchedItem(input: 'What is TouchDesigner'),
          SearchedItem(input: 'How to start a clothing brand'),
          SearchedItem(input: 'Improving as a designer'),
          //separatore
          SearchedTime(time: 'September'),
          SearchedItem(input: 'Learninng to code'),
          SearchedItem(input: 'Best Plugins for Visual Studio'),
          SearchedItem(input: 'Importing a CSS file in HTML'),
        ],
      ),
    );
  }
}
