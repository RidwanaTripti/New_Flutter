import 'package:flutter/material.dart';

//static ListView
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -2")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -3")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -3")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -3")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                color: Colors.deepOrange,
                child: Align(child: Text("Count -3")),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
