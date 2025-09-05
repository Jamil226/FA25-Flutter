import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to open dialer
  Future<void> _openDialer(String number) async {
    final Uri uri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch dialer for $number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialer Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("Open Dialer")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _openDialer("+923001234567"); // Replace with your number
            },
            child: const Text("Open Dialer"),
          ),
        ),
      ),
    );
  }
}
