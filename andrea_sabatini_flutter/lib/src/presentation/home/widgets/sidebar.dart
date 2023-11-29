import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                Container(),
                const Text('ChatGPT'),
                const Spacer(),
                const Icon(Icons.add),
              ],
            ),
            Expanded(child: ListView()),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 8),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'url',
                        ),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ))
              ],
            )
          ],
        ));
  }
}
