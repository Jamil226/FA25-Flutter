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
        appBar: AppBar(
          title: Text('GridView in Flutter'),
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
          crossAxisCount: 2, // 2 items per row
          padding: const EdgeInsets.all(8.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.blue, height: 50, width: 50,
              child: Text('Container 1', style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ),),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, height: 50, width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green, height: 50, width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.orange, height: 50, width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.purple, height: 50, width: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.brown, height: 50, width: 50),
            ),
          ],
        ),
      ),
    );
  }
}
