import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          //Sidebar
          Sidebar(),
        ],
      ),
    );
  }
}
