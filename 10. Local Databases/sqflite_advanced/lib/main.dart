import 'package:flutter/material.dart';
import 'package:my_first_app/expenses.dart';

void main() {
  // main() is the entry point of every Dart app.
  // Flutter apps start here.
  runApp(const MyApp());
  // runApp() takes the root widget and attaches it to the screen.
  // We provide MyApp() which sets up the app shell (MaterialApp).
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build() describes the UI for this widget.
    // We return a MaterialApp which provides theme, routing, title, etc.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Removes the DEBUG banner shown in the top-right while developing.

      title: 'Expenses App',
      // Title used by the OS (sometimes shown in app switcher).

      theme: ThemeData(
        // A simple app theme. Teach students they can customize fonts/colors here.
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // HOME: the first screen shown by the app.
      // We point home to ExpensesScreen() which lives in expenses.dart
      home: const ExpensesScreen(),

    );
  }
}
