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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Muhammad Jamil',
                style: TextStyle(
                  fontFamily: 'Pacific',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Senior Software Engineer',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.tealAccent[100],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    const Icon(Icons.email, color: Colors.teal),
                    const SizedBox(width: 10.0),
                    Text(
                      'jamil138.amin@gmail.com',
                      style: const TextStyle(
                        fontFamily: 'Source Sans',
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
