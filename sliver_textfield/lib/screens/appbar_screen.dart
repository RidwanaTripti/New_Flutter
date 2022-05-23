import 'package:flutter/material.dart';

class SlivarAppbar extends StatelessWidget {
  const SlivarAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 300.0,
            backgroundColor: Colors.indigo,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text("Log In"),
            ),
          ),
        ],
      ),
    );
  }
}
