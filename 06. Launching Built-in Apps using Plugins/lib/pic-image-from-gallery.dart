import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Private function to pick an image from the gallery
  Future<void> _pickImageFromGallery() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // Here you can use the picked image file
        final File pickedFile = File(image.path);
        print('Image picked from gallery: ${pickedFile.path}');
      }
    } catch (e) {
      // Handle the exception, e.g., show an error message.
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("Pick Image")),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // The button calls the private gallery function.
              await _pickImageFromGallery();
            },
            child: const Text("Open Gallery"),
          ),
        ),
      ),
    );
  }
}
