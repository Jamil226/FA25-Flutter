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
        body: SafeArea(
          // child: Container(
          //   height: 100.0,
          //   width: 450.0,
          //   color: Colors.green,
          //   // padding: EdgeInsets.all(10.0),
          //   padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //   // margin: EdgeInsets.all(30.0),
          //   margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //   child: Text('Hello World'),
          // )
          // child: Row(
          //   children: [
          //   Container(
          //     height: 100.0,
          //     width: 100.0,
          //     color: Colors.green,
          //     // padding: EdgeInsets.all(10.0),
          //     padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //     // margin: EdgeInsets.all(30.0),
          //     margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //     child: Text('Hello World'),
          //   ),
          //     Container(
          //       height: 100.0,
          //       width: 100.0,
          //       color: Colors.green,
          //       // padding: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //       // margin: EdgeInsets.all(30.0),
          //       margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //       child: Text('Hello World'),
          //     ),
          //     Container(
          //       height: 100.0,
          //       width: 100.0,
          //       color: Colors.green,
          //       // padding: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //       // margin: EdgeInsets.all(30.0),
          //       margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //       child: Text('Hello World'),
          //     )
          //   ],
          // ),

          //   child: Column(
          //     children: [
          //     Container(
          //       height: 300.0,
          //       width: 300.0,
          //       color: Colors.green,
          //       // padding: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //       // margin: EdgeInsets.all(30.0),
          //       margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //       child: Text('Hello World'),
          //     ),
          //       Container(
          //         height: 300.0,
          //         width: 300.0,
          //         color: Colors.green,
          //         // padding: EdgeInsets.all(10.0),
          //         padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //         // margin: EdgeInsets.all(30.0),
          //         margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //         child: Text('Hello World'),
          //       ),
          //       Container(
          //         height: 300.0,
          //         width: 300.0,
          //         color: Colors.green,
          //         // padding: EdgeInsets.all(10.0),
          //         padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
          //         // margin: EdgeInsets.all(30.0),
          //         margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
          //         child: Text('Hello World'),
          //       )
          //     ],
          //
          //
          // ),
          child: ListView(
            children: [
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.green,
                // padding: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
                // margin: EdgeInsets.all(30.0),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
                child: Text('Hello World'),
              ),
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.green,
                // padding: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
                // margin: EdgeInsets.all(30.0),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
                child: Text('Hello World'),
              ),
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.green,
                // padding: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
                // margin: EdgeInsets.all(30.0),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 40.0),
                child: Text('Hello World'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
