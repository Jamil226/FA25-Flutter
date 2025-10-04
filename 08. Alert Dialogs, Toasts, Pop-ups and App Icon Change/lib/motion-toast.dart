import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ToastScreen(),
  ));
}

class ToastScreen extends StatelessWidget {
  const ToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toasts with Icons"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                MotionToast(
                  icon: Icons.info_outline,
                  primaryColor: Colors.blue,
                  title: const Text(
                    "Primary",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  description: const Text("This is a Primary Toast"),
                  animationCurve: Curves.easeInOut,
                  width: 300,
                  height: 80,
                ).show(context);
              },
              child: const Text("Primary Toast"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                MotionToast.success(
                  title: const Text("Success"),
                  description: const Text("Data Submitted Successfully"),
                ).show(context);
              },
              child: const Text("Success Toast"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                MotionToast.warning(
                  title: const Text("Warning"),
                  description: const Text("No Internet Connection"),
                ).show(context);
              },
              child: const Text("Warning Toast"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                MotionToast.error(
                  title: const Text("Error"),
                  description: const Text("Something went wrong!"),
                ).show(context);
              },
              child: const Text("Danger Toast"),
            ),
          ],
        ),
      ),
    );
  }
}
