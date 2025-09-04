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
          title: Text('My First Flutter App'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,                
              fontWeight: FontWeight.bold, 
              color: Colors.teal,          
              letterSpacing: 2,            
              wordSpacing: 5,              
              fontStyle: FontStyle.italic, 
              // shadows: [
              //   Shadow(
              //     blurRadius: 5,
              //     color: Colors.black26,
              //     offset: Offset(3, 3),    
              //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
