import 'package:flutter/material.dart';
import 'screens/calculator.dart';
import 'screens/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      //home: Home()
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/cal': (context) => Calculator(),
      },
    );
  }
}
