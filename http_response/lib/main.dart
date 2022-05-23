import 'package:flutter/material.dart';
import 'screens/details_screen.dart';
import 'screens/home_screen.dart';
import 'screens/insert_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/insert': (context) => InsertScreen(),
      },
    );
  }
}
