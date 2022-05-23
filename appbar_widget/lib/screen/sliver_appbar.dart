import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverAppbar extends StatelessWidget {
  const SliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Appbar"),
              background: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1482148454461-aaedae4b30bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fG5hdHVyYWx8ZW58MHx8MHx8&w=1000&q=80"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Container(
                      //padding: EdgeInsets.all(8.0),
                      ),
                  title: Text("Index $index"),
                );
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
