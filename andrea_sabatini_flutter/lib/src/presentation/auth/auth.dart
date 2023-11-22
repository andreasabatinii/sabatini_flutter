// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF3B664)
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ChatAndrea',
                    style: TextStyle(
                      color: Color(0xFFC95618),
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text('Best Chat',
                    style: TextStyle(
                      color: Color(0xFFC95618),
                      fontSize: 48,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox.shrink() //è un box vuoto
                  ],
                ),
              ),
            ),
          ),
          
          // Sezione Bianca
          Expanded(
            
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: SizedBox(
                  
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox.shrink(),
                      Column(
                        children: [
                          Text('Get started'),
                          Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: Color(0xFF8963BA),
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Center(
                              child: Text('Login'),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Qualcosa'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('data'),
                              Container(),
                              Text('data')
                            ],
                          )
                        ],
                      )
                    ],
                          ),
                ),
              ),
            ))
        ],

      ),
    );
  }
}