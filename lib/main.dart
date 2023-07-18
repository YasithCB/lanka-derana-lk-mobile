import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lanka_derana/pages/tab_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 16, 91, 230),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LankaDerana',
      theme: theme,
      home: const TabPage(),
    );
  }
}