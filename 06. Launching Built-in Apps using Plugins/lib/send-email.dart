import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to send Email
  Future<void> _sendEmail({
    required String toEmail,
    required String subject,
    required String body,
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch Email app';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("Send Email")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _sendEmail(
                toEmail: "jamil138.amin@gamil.com",
                subject: "Greetings from Flutter",
                body: "Hello, this is a test email sent using Flutter",
              );
            },
            child: const Text("Send Email"),
          ),
        ),
      ),
    );
  }
}
