import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [];
  final url = "https://jsonplaceholder.typicode.com/posts";

  @override
  void initState() {
    super.initState();
    getAllPosts();
  }

  Future<void> getAllPosts() async {
    final responce = await http.get(Uri.parse(url));
    //print(responce.body);
    final jsonRes = jsonDecode(responce.body);
    // final jsonRes = jsonDecode(responce.body);
    setState(() {
      data = jsonRes as List;
    });
    data = jsonRes as List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) {
            final res = data[i];
            return ListTile(
              //leading: Icon(Icons.emoji_people),
              title: Text("${res['title']}"),
              subtitle: Text("ID:${res['id']} | UserID:${res['userId']}"),
            );
            // return Text("Title : ${i + 1} ${res['title']}");
          }),
    );
  }
}
