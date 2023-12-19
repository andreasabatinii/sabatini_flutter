import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/dale_plan.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/listview_menu.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/upper_menu.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/sidebar/user.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF101010),
      child: const Column(
        children: [
          UpperMenu(),
          Expanded(child: ListviewMenu()),
          DalePlan(),
          User()
        ],
      ),
    );
  }
}
