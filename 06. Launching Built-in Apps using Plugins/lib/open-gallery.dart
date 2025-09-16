import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to pick image from gallery
  Future<void> _pickImageFromGallery(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    await picker.pickImage(source: ImageSource.gallery);
    // Just opens gallery picker; no need to display the image
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: const Text("Pick Image from Gallery")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _pickImageFromGallery(context);
            },
            child: const Text("Open Gallery"),
          ),
        ),
      ),
    );
  }
}
