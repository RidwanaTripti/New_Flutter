import 'screens/dashboard_screen.dart';
import 'screens/home_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Authentication System",
      initialRoute: '/',
      routes: {'/': (context) => LogIn(), '/': (context) => Dashbord()},
    );
  }
}
