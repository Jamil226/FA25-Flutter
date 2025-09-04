import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Image Examples"),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/my_profile.jpeg'),
              ),
              const SizedBox(height: 20),

              Image.asset(
                'assets/images/book.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),

            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            ),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
