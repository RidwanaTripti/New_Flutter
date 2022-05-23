import 'package:flutter/material.dart';
import '/screens/details_screen.dart';
import '/screens/home_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HTTP Responce",
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen(), '/det': (context) => Details()},
    );
  }
}
