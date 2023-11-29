import 'package:andrea_sabatini_flutter/src/presentation/auth/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox.shrink(),
              Column(
                children: [
                  Text(
                    'Get started',
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Button(
                        label: 'Log in',
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(child: Button(label: 'Sign up')),
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
                            color: const Color.fromARGB(255, 216, 216, 216),
                            borderRadius: BorderRadius.circular(
                                20), // Imposta il border radius desiderato
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'OpenAI',
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFFB4B4B3)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Terms of use',
                          style: GoogleFonts.sora(
                              color: const Color(0xFFB4B4B3),
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 1,
                        height: 16,
                        color: const Color(0xFFB4B4B3),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Privacy Policy',
                          style: GoogleFonts.sora(
                              color: const Color(0xFFB4B4B3),
                              fontSize: 14,
                              fontWeight: FontWeight.w300))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
