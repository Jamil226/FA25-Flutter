import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomAlertDemo(),
  ));
}

class BottomAlertDemo extends StatelessWidget {
  const BottomAlertDemo({super.key});

  void showBottomAlert(BuildContext context, String message, Color color, IconData icon) {
    showModalBottomSheet(
      context: context,
      backgroundColor: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Alert Dialog on Button"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, 
                ),
                onPressed: () => showBottomAlert(
                  context,
                  "Success! Data Submitted",
                  Colors.green,
                  Icons.check_circle,
                ),
                child: const Text("Show Success Alert"),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white, 
                ),
                onPressed: () => showBottomAlert(
                  context,
                  "Warning! No Internet",
                  Colors.orange,
                  Icons.warning,
                ),
                child: const Text("Show Warning Alert"),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => showBottomAlert(
                  context,
                  "Error! Something went wrong",
                  Colors.red,
                  Icons.error,
                ),
                child: const Text("Show Error Alert"),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => showBottomAlert(
                  context,
                  "Info: This is a primary alert",
                  Colors.blue,
                  Icons.info,
                ),
                child: const Text("Show Info Alert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
