import 'package:andrea_sabatini_flutter/src/presentation/auth/widgets/form_section.dart';
import 'package:andrea_sabatini_flutter/src/presentation/auth/widgets/hero_section.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 900;

        return isDesktop
            ? const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeroSection(),
                  // Sezione Bianca
                  FormSection(),
                ],
              )
            : const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //HeroSection(),
                  // Sezione Bianca
                  FormSection(),
                ],
              );
      }),
    );
  }
}
