import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/screens/details_screen.dart';

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
    final response = await http.get(url);

    final jsonRes = jsonDecode(response.body);

    setState(() {
      data = jsonRes as List;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final res = data[index];

          return ListTile(
            //leading: Icon(Icons.tab),
            //selected: bool,
            //selectedTileColor: Colors.blueGrey,
            //enabled: bool,
            //dense: bool,
            contentPadding: EdgeInsets.all(8.0),
            tileColor: Colors.grey,
            title: Text(
              "${res['title']}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "ID: ${res['id']} | User ID: ${res['userId']}",
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/det', arguments: res);
              // child:
              // Text("${res}");
            },
          );
        },
      ),
    );
  }
}
