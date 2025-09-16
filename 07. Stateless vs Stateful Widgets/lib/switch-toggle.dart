import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SwitchDemo()));
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(title: const Text("Switch Demo"), backgroundColor: Colors.teal),
      body: Center(
        child: Switch(
          value: isDark,
          onChanged: (value) {
            setState(() {
              isDark = value;
            });
          },
        ),
      ),
    );
  }
}
