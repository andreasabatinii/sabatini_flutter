import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/main_section.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: const Sidebar()),
      body: LayoutBuilder(builder: (context, contstraints) {
        final isMobile = contstraints.maxWidth <= 750;
        return Row(
          children: [
            //Sidebar
            if (!isMobile) const SizedBox(width: 300, child: Sidebar()),

            const MainSection()
          ],
        );
      }),
    );
  }
}
