import 'package:flutter/material.dart';
import 'package:my_first_gc_app/main.dart';

class LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Like Button Demo"),
          backgroundColor: Colors.teal
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
            size: 100,
          ),
          onPressed: toggleLike,
        ),
      ),
    );
  }
}