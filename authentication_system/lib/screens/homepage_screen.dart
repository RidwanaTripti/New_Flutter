import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.black,
          titleSpacing: 3,
          elevation: 15.0,
          shadowColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          centerTitle: true,
          titleTextStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        body: UserInfo());
  }
}

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Email Address is ${user['email']}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Password is ${user['password']}"),
            )
          ],
        ),
      ),
    );
  }
}
