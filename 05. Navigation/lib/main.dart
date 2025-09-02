import 'package:first_fall_25_app/about.dart';
import 'package:first_fall_25_app/contact.dart';
import 'package:first_fall_25_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(), // Replace with initialRoute
      initialRoute: '/',
      // Named Routes
      routes: {
        '/' : (context) => Home(),
        '/about' : (context) => About(),
        '/contact' : (context) => Contact(),

      },
    );
  }
}