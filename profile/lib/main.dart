import 'package:flutter/material.dart';
import '/screens/profile_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      initialRoute: '/',
      routes: {'/': (context) => Profile()},
    );
  }
}
