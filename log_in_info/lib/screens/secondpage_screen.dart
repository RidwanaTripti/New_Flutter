import 'package:flutter/material.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home"),
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        shadowColor: Colors.indigoAccent,
      ),
    );
  }
}
