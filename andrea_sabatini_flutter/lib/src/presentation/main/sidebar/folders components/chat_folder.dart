import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/folder_actions_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/folder_items_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/widgets/grid.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

class ChatFolder extends StatelessWidget {
  const ChatFolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: Grid.medium),
        children: const [
          FolderActionsComponent(
              folderaction: 'Chat folders',
              folderactionicon: Icons.expand_more),
          SizedBox(height: Grid.xssmall),
          FolderItemsComponents(
              chatnumber: '2',
              foldername: 'Relationships',
              foldercolor: Palette.red),
          SizedBox(height: Grid.xssmall),
          FolderItemsComponents(
              chatnumber: '5',
              foldername: 'Learning IED',
              foldercolor: Palette.lightblue),
          SizedBox(height: Grid.xssmall),
          FolderItemsComponents(
              chatnumber: '3',
              foldername: 'Self Improvement',
              foldercolor: Palette.yellow),
          SizedBox(height: Grid.xssmall),
          FolderItemsComponents(
              chatnumber: '2',
              foldername: 'Summaries',
              foldercolor: Palette.pink),
          SizedBox(height: Grid.xssmall),
          FolderActionsComponent(
              folderaction: 'New folder', folderactionicon: Icons.add),
        ],
      ),
    );
  }
}
