import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CounterApp()));
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App"), backgroundColor: Colors.teal),
      body: Center(
        child: Text(
          "Count: $counter",
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: decrement, child: const Icon(Icons.remove)),
          const SizedBox(width: 10),
          FloatingActionButton(onPressed: increment, child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
