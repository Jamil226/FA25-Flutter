import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  final String name;
  final String email;

  const FourthScreen({required this.name, required this.email, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fourth Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name: $name",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 12),
            Text(
              "Email: $email",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
