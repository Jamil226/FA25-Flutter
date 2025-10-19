import 'package:flutter/material.dart';
import 'package:sticky_notes_app/helpers/db_helper.dart';

class NoteDetail extends StatefulWidget {
  final Map<String, dynamic> note;

  const NoteDetail({super.key, required this.note});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  final dbHelper = DBHelper();
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note['title']);
    _contentController = TextEditingController(text: widget.note['content']);
  }

  Future<void> _updateNote() async {
    if (_titleController.text.isEmpty && _contentController.text.isEmpty) return;

    await dbHelper.updateNote({
      'id': widget.note['id'],
      'title': _titleController.text,
      'content': _contentController.text,
    });
  }

  Future<void> _deleteNote() async {
    await dbHelper.deleteNote(widget.note['id']);
    Navigator.pop(context, true);

    // Show confirmation bottom sheet
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Container(
        padding: const EdgeInsets.all(20),
        child: const Center(
          child: Text(
            "🗑️ Note Deleted Successfully!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _updateNote();
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.8,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () async {
              await _updateNote();
              Navigator.pop(context, true);
            },
          ),
          title: TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              hintText: "Enter title...",
              border: InputBorder.none,
            ),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textInputAction: TextInputAction.done,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              onPressed: _deleteNote,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: TextField(
            controller: _contentController,
            decoration: const InputDecoration(
              hintText: "Write your note here...",
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
