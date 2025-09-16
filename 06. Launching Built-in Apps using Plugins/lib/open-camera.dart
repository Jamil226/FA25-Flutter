import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to open Camera
  Future<void> _openCamera(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    await picker.pickImage(source: ImageSource.camera);
    // No need to use the photo, just opening camera is enough
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Camera Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: const Text("Open Camera")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _openCamera(context);
            },
            child: const Text("Open Camera"),
          ),
        ),
      ),
    );
  }
}
