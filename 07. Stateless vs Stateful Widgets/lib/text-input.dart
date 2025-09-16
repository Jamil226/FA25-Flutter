import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NameInputDemo()));
}

class NameInputDemo extends StatefulWidget {
  const NameInputDemo({super.key});

  @override
  State<NameInputDemo> createState() => _NameInputDemoState();
}

class _NameInputDemoState extends State<NameInputDemo> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Name Input Demo"), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Enter your name"),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              "Hello, $name",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
