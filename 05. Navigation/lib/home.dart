import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
                child: Text('About Page')
            ),
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
                child: Text('Contact Page')
            ),
          ],
        ),
      ),
    );
  }
}