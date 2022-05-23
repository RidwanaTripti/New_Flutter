import 'package:appbar_widget/screen/sliver_appbar.dart';
//import 'package:appbar_widget/screen/simple_appbar.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Appbar());
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        title: "AppBar",
        home:
            //SimpleAppBar(),
            SliverAppbar());
  }
}
