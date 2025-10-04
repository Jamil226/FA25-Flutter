import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Alert Dialog"),
      centerTitle: true,
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Exit App"),
                content: Text("Are you sure you want to exit the application?"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      exit(0);
                    },
                    child: Text("Yes"),
                  ),
                ],
              ),
            );
          },
          child: Text("Show Exit Dialog"),
        ),
      ),
    );
  }
}
