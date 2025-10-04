import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IconScreen(),
  ));
}

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(100.0),
          child: Image(
            image: AssetImage("assets/images/app_icon.png"),
          ),
        ),
      ),
    );
  }
}
