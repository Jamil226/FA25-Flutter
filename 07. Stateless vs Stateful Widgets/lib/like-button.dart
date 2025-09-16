import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LikeButtonDemo()));
}

class LikeButtonDemo extends StatefulWidget {
  const LikeButtonDemo({super.key});

  @override
  State<LikeButtonDemo> createState() => _LikeButtonDemoState();
}

class _LikeButtonDemoState extends State<LikeButtonDemo> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Like Button Demo"), backgroundColor: Colors.teal),
      body: Center(
        child: IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
            size: 50,
          ),
          onPressed: toggleLike,
        ),
      ),
    );
  }
}
