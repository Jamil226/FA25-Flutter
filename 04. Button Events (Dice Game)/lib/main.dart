import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: DicePage(), // Calling a State-full Class
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      // 0-5 Total Elements 6 (1-6 => Random Value Selection)
      // 5 => 6
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   const DicePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // var leftDiceNumber = 3;
//     // var rightDiceNumber = 6;
//     int leftDiceNumber = 3;
//     int rightDiceNumber = 6;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             // flex: 2,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextButton(
//                   onPressed: () {
//                   },
//                   child: Image.asset('images/dice$leftDiceNumber.png')
//               ),
//             ),
//           ),
//
//           Expanded(
//             // flex: 1,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextButton(
//                   onPressed: () {
//                   },
//                   child: Image.asset('images/dice$rightDiceNumber.png')
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }