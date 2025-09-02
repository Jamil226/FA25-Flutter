import 'package:flutter/material.dart';

class AboutDetails extends StatelessWidget {
  const AboutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('About Details'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            },
                child: Text('Go Back')
            ),
          ],
        ),
      ),
    );
  }
}