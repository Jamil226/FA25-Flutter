import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const StickyNotesApp());
}

class StickyNotesApp extends StatelessWidget {
  const StickyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sticky Notes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.yellow[50],
      ),
      home: const SplashScreen(),
    );
  }
}
