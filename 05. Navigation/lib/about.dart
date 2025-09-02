import 'package:first_fall_25_app/about_details.dart';
import 'package:first_fall_25_app/home.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return AboutDetails();
                  })
              );
            },
                child: Text('Go to About Us Details Page')),
            TextButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return Home();
                  })
              );
            },
                child: Text('Home Page')),
          ],
        ),
      ),
    );
  }
}