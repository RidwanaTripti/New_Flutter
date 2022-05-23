import 'screens/homepage_screen.dart';
import 'screens/login_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      title: "MyApp",
      initialRoute: '/',
      routes: {'/': (context) => LogIn(), '/hom': (context) => HomePage()},
    );
  }
}
