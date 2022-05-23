import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late SharedPreferences preferences;
  String? data;
  String? username;
  String? password;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async{
    preferences = await SharedPreferences.getInstance();

    String? data = preferences.getString("MY_NAME");
    print(data);

    if(data == null) return;

    setState(() {
      this.data = data;

      username = preferences.getString("USERNAME");
      password = preferences.getString("PASSWORD");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data: ${data}"),
            Text("Username: ${username}"),
            Text("Password: ${password}"),
          ],
        ),
      ),
    );
  }
}
