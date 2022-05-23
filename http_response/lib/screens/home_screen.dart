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
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  @override
  initState() {
    super.initState();
    getAllPosts();
  }

  Future<void> getAllPosts() async {
    final response = await http.get(url); // string
    // print(response.body);
    final jsonRes = jsonDecode(response.body);
    // print(jsonRes);

    setState(() {
      data = jsonRes as List;
    });
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
            // leading: Icon(Icons.mail),
            title: Text(
              "${res['title']}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("ID: ${res['id']} | User ID: ${res['userId']}"),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("${res['title']}"),
                  content: Text("${res['body']}"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Ok'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
