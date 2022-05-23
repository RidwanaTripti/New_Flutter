import 'dart:ui';

import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      titleSpacing: 30.0,
      titleTextStyle: TextStyle(
          // backgroundColor: Colors.black,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
      centerTitle: false,
      title: Text("App Bar"),
    ));
  }
}
