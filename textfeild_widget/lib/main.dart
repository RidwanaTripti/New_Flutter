import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            // style: TextStyle(color: Colors.black),
          ),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
          // titleSpacing: 20.0, //defauld
          centerTitle: true,
          elevation: 8.0,
          shadowColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          // flexibleSpace: FlexibleSpaceBar(
          //   title: Text("something"),
          // ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 10.0),
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: Icon(Icons.abc_outlined),
                  ),
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  maxLength: 20,
                  // toolbarOptions: ToolbarOptions(
                  //     copy: true, cut: true, paste: true, selectAll: true),
                  //textCapitalization: TextCapitalization.words,
                  //enableIMEPersonalizedLearning: [bool],
                  //enableInteractiveSelection: [bool],
                  //enableSuggestions: [bool],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(fontSize: 10.0),
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(Icons.phone_android),
                  ),
                  //keyboardType: TextInputType.name,
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  keyboardAppearance: Brightness.dark,
                  maxLength: 11,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 10.0),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixText: "@gmail.com",
                    suffixStyle: TextStyle(fontSize: 12.0),
                    // suffixIcon: Icon(Icons.email),
                  ),
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  keyboardAppearance: Brightness.dark,
                  //keyboardType: TextInputType.name,
                  //maxLength: 10,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 10.0),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.deepOrange),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  keyboardAppearance: Brightness.dark,
                  obscureText: true,
                  maxLength: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
