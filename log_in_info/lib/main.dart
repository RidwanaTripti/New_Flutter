import 'package:flutter/material.dart';
import 'screens/secondpage_screen.dart';
import 'screens/firstpage_screens.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Authentication System",
      //theme: ThemeData(scaffoldBackgroundColor: Colors.purpleAccent[50]),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPAge(),
        '/log': (context) => SecoundPage()
      },
    );
  }
}
