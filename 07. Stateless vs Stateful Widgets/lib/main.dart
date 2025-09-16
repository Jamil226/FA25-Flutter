import 'package:flutter/material.dart';
import 'package:my_first_gc_app/ui/like_button.dart';

void main() {
  runApp(const MaterialApp(home: LikeButton()));
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => LikeButtonState();
}
