import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to send SMS
  Future<void> _sendSms(String number, String message) async {
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: number,
      queryParameters: {'body': message},
    );

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      throw 'Could not launch SMS app';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMS Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text("Send SMS")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _sendSms("1234567890", "Hello from Flutter 🚀");
            },
            child: const Text("Send SMS"),
          ),
        ),
      ),
    );
  }
}
