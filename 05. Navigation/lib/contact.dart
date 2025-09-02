import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/about');
            }, child: Text('About Us Page')),
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/');
            }, child: Text('Home Page')),
          ],
        ),
      ),
    );
  }
}