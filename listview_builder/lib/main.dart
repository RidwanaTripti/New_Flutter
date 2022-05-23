import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List data = [
    {"name": "JB"},
    {"name": "RT"},
    {"name": "SW"},
    {"name": "RF"},
    {"name": "NN"},
    {"name": "ER"},
    {"name": "TR"},
    {"name": "RE"}
  ];
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: ListView.builder(
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  color: Colors.brown,
                  child: Align(
                    child: Text("${data[index]['name']}"),
                  ),
                ),
              );
            },
            itemCount: data.length,
          )),
        ));
  }
}
