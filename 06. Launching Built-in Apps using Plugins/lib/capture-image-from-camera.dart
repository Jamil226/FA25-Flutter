import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Now a private function with an underscore
  Future<void> _captureImageFromCamera() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? photo = await picker.pickImage(source: ImageSource.camera);

      if (photo != null) {
        final File capturedFile = File(photo.path);
        print('Image captured: ${capturedFile.path}');
      }
    } catch (e) {
      print('Failed to capture image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text("Capture Image")),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // The button now calls the private function
              await _captureImageFromCamera();
            },
            child: const Text("Open Camera"),
          ),
        ),
      ),
    );
  }
}
