import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to open a place by name
  Future<void> _openPlace(String place) async {
    final Uri mapUri = Uri.parse("geo:0,0?q=$place");

    if (await canLaunchUrl(mapUri)) {
      await launchUrl(mapUri);
    } else {
      throw 'Could not open location: $place';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps Example',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text("Open Map - Sahiwal")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _openPlace("Sahiwal, Punjab, Pakistan");
            },
            child: const Text("Open Sahiwal in Maps"),
          ),
        ),
      ),
    );
  }
}
