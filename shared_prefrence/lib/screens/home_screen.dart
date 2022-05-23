import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences preferences;
  Map user = {
    'fullname': 'Jayanta Biswas',
    'email': 'bjayanta.neo@gmail.com',
    'username': 'bjayanta',
    'password': '12345678',
  };

  @override
  void initState() {
    super.initState();

    // your code
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Store"),
              onPressed: () {
                preferences.setString("MY_NAME", user.toString());
                preferences.setString("USERNAME", 'jayanta');
                preferences.setString("PASSWORD", '123456789');
              },
            ),
            ElevatedButton(
              child: Text("Detail"),
              onPressed: () {
                Navigator.of(context).pushNamed('/detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}
