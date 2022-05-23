import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text Style",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Text Style",
          ),
        ),
        body: Center(
          child: AnimatedDefaultTextStyle(
              child: Text(
                "Flutter",
                textAlign: TextAlign.center,
              ),
              curve: Curves.bounceInOut,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
              duration: Duration(milliseconds: 500)),
        ),
      ),
    ),
  );
}
//doesn't work it..i will try later...