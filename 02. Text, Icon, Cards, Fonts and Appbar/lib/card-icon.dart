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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Card + Icon Example'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: const Center(
          child: Card(
            elevation: 4, // Shadow effect
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
                size: 30,
              ),
              title: Text(
                'jamil138.amin@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
