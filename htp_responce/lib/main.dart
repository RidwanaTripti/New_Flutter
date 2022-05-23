import 'package:flutter/material.dart';
import 'package:htp_responce/screens/details_screen.dart';
import 'package:htp_responce/screens/home_screen.dart';
import 'package:htp_responce/screens/insert_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HTP Responce",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/ins': (context) => InsertScreen(),
        "/det": (conrext) => DetailsScreen()
      },
    );
  }
}
