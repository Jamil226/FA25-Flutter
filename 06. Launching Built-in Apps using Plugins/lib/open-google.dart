import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to open Google
  Future<void> _openGoogle() async {
    final Uri url = Uri.parse("https://www.google.com");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch Google";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Google Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Open Google")),
        body: Center(
          child: ElevatedButton(
            onPressed: _openGoogle,
            child: const Text("Open Google"),
          ),
        ),
      ),
    );
  }
}
