import 'package:flutter/material.dart';
import '../helpers/db_helper.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final DBHelper dbHelper = DBHelper();

  void saveNote() async {
    await dbHelper.insertNote({
      'title': titleController.text,
      'content': contentController.text,
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Note")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(labelText: "Content"),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: saveNote,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade300,
                  foregroundColor: Colors.black,
                ),
                child: const Text("Save Note"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
