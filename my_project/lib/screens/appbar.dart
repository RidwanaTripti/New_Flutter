import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                curve: Curves.bounceInOut, //why??
                child: Center(
                  child: Text(
                    "Menu",
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    leading: IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      splashColor: Colors.red,
                      splashRadius: 20.0,
                    ),
                  ),
                  ListTile(
                    title: Text("Place"),
                    leading: IconButton(
                      icon: Icon(Icons.place),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      splashColor: Colors.red,
                      splashRadius: 20.0,
                    ),
                  ),
                  ListTile(
                    title: Text("Contact"),
                    leading: IconButton(
                      icon: Icon(Icons.contact_phone),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      splashColor: Colors.red,
                      splashRadius: 20.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        appBar: (AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Home"),
          centerTitle: false,
          elevation: 15.0,
          shadowColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print("working 2");
                    },
                    splashRadius: 15.0,
                    splashColor: Colors.brown,
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      print("Working");
                    },
                    splashRadius: 15.0,
                    splashColor: Colors.brown,
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    splashRadius: 15.0,
                    splashColor: Colors.brown,
                  ),
                ],
              ),
            )
          ],
        )),
        //body: ,
      ),
    );
  }
}
