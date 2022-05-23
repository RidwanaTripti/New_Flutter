import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TextProject());
}

class TextProject extends StatelessWidget {
  const TextProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "All about of Text Widget",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          //automaticallyImplyLeading: true, //why
          elevation: 15.0,
          shadowColor: Colors.orangeAccent,
          // toolbarTextStyle: TextStyle(
          //     color: Colors.orange,
          //     fontSize: 30.0,
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.bold),
          // toolbarHeight: 40.0,
        ),
        body: Center(
          child: Container(
            height: 150.0,
            width: 250.0,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Here I have used almost all properties of Text Widget.The properties of Text widget are: 1.style: color:....,fontSize:...,fontweight:..,letterSpacing:..., etc.",
                //maxLines: 3,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                //locale: Locale(_languageCode),
                // strutStyle: StrutStyle.fromTextStyle(
                //   const TextStyle(backgroundColor: Colors.blue),
                //),??
                //softWrap: true,
                style: TextStyle(
                  color: Colors.red,
                  //backgroundColor: Colors.black,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200,
                  //letterSpacing: 2.0,
                  wordSpacing: 10.0,
                  //foreground:??
                  //shadows:
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
