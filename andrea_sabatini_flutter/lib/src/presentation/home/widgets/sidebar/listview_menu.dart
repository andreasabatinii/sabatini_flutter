import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/input/searched_item.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/input/searched_time.dart';
import 'package:flutter/material.dart';

class ListviewMenu extends StatelessWidget {
  const ListviewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: ListView(
        children: const [
          SearchedTime(time: 'Today'),
          SearchedItem(input: 'How to crate variables in Flutter'),
          SearchedItem(input: 'Add an image to my code'),
          SearchedItem(input: 'Adding a margin to my element'),
          //separatore
          SearchedTime(time: 'Yesterday'),
          SearchedItem(input: 'Social Strategy for a brand'),
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
          SearchedItem(input: 'Learning to code'),
          SearchedItem(input: 'Best Plugins for Visual Studio'),
          SearchedItem(input: 'Importing a CSS file in HTML'),
          //separatore
          SearchedTime(time: 'August'),
          SearchedItem(input: 'Places to visit in Corfu'),
          SearchedItem(input: 'Best beaches in Greece'),
          SearchedItem(input: 'How to inspect a page'),
          SearchedItem(input: 'What to see in Puglia'),
        ],
      ),
    );
  }
}
