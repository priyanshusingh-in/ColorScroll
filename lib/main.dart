import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Color randomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
      1, // Opacity
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Scroll'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Consolas',
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              height: 500,
              width: 500,
              color: randomColor(),
            );
          },
        ),
      ),
    );
  }
}
