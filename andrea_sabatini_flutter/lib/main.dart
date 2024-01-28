import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/main_page.dart';
import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tegtepyvuqmwsdxrfald.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRlZ3RlcHl2dXFtd3NkeHJmYWxkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ4ODYxMTEsImV4cCI6MjAyMDQ2MjExMX0.sIBljd8KsziomAN2RoDVaSPgTqybw5_GW1H6KEdKKug',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
            brightness: Brightness.light,
            extensions: <ThemeExtension<dynamic>>[
              lightTheme,
            ]),
        dark: ThemeData(
            brightness: Brightness.dark,
            extensions: <ThemeExtension<dynamic>>[
              darkTheme,
            ]),
        initial: AdaptiveThemeMode.light,
        builder: (lightTheme, darkTheme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: lightTheme,
            darkTheme: darkTheme,
            home: const MainPage(),
          );
        });
  }
}
