import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/folder_actions_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/sidebar/folders%20components/folder_items_component.dart';
import 'package:flutter/material.dart';

class ChatFolder extends StatelessWidget {
  const ChatFolder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FolderActionsComponent(
            folderaction: 'Chat folders', folderactionicon: Icons.expand_more),
        SizedBox(height: 8),
        FolderItemsComponents(
            chatnumber: '16',
            foldername: 'Relationships',
            foldercolor: Color(0xFFFC365E)),
        SizedBox(height: 8),
        FolderItemsComponents(
            chatnumber: '48',
            foldername: 'Learning IED',
            foldercolor: Color(0xFF3A72FF)),
        SizedBox(height: 8),
        FolderItemsComponents(
            chatnumber: '130',
            foldername: 'Self Improvement',
            foldercolor: Color(0xFFFEA82F)),
        SizedBox(height: 8),
        FolderItemsComponents(
            chatnumber: '4',
            foldername: 'Summaries',
            foldercolor: Color(0xFFFF72F1)),
        SizedBox(height: 8),
        FolderActionsComponent(
            folderaction: 'New list', folderactionicon: Icons.add),
      ],
    );
  }
}
