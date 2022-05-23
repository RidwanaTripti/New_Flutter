import 'package:flutter/material.dart';
import 'package:json/screens/home_screens.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HTT Responce",
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
    );
  }
}
