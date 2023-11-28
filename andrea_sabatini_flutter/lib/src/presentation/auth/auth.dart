// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                color: Color(0xFFFFE3BB)
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('ChatAndrea',
                        style: GoogleFonts.sora(
                          color: Color(0xFFFFAD33),
                          fontSize: 21,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                          color: Color(0xFFFFAD33),
                          borderRadius: BorderRadius.circular(20), // Imposta il border radius desiderato
                          ))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Chat',
                        style: GoogleFonts.sora(
                          color: Color(0xFFFFAD33),
                          fontSize: 56,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("to discover what's new",
                        style: GoogleFonts.sora(
                          color: Color(0xFFFFAD33),
                          fontSize: 36,
                          fontWeight: FontWeight.w500
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 50
                    ) //è un box vuoto
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
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox.shrink(),
                      Column(
                        children: [
                          Text('Get started',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold,
                            fontSize: 32
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF1F57FF),
                                    borderRadius: BorderRadius.circular(6)
                                  ),
                                  child: Center(
                                    child: Text('Log in',
                                    style: GoogleFonts.sora(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 16
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                    color: Color(0xFF1F57FF), // Colore del bordo
                                    width: 1.5, // Spessore del bordo
                                  ),
                                  ),
                                  child: Center(
                                    child: Text('Sign up',
                                    style: GoogleFonts.sora(
                                      color: Color(0xFF1F57FF),
                                      fontSize: 16
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                color: Color.fromARGB(255, 216, 216, 216),
                                borderRadius: BorderRadius.circular(20), // Imposta il border radius desiderato
                                )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('OpenAI',
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFB4B4B3)
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Terms of use',
                              style: GoogleFonts.sora(
                                      color: Color(0xFFB4B4B3),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    )),
                              SizedBox(width: 10,),
                              Container(
                                width: 1,
                                height: 16,
                                color: Color(0xFFB4B4B3),
                              ),
                              SizedBox(width: 10,),
                              Text('Privacy Policy',
                              style: GoogleFonts.sora(
                                      color: Color(0xFFB4B4B3),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ))
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