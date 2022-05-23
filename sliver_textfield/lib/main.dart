import 'package:flutter/material.dart';
import 'package:sliver_textfield/screens/appbar_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Auyhentication System",
      //theme: ThemeData(scaffoldBackgroundColor: Colors.indigoAccent[200]),
      initialRoute: '/',
      routes: {
        '/': (context) => SlivarAppbar(),
        //'/log':(context) =>
      },
    );
  }
}
