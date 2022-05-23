import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final data = {'name': 'Tripti', 'phone': '01770220367'};
  final user = {
    'name': 'JB',
    'email': 'bjayanta.neo@gmail.com',
    'password': '123456',
  };

  TextEditingController nameCtrl = TextEditingController();
  String fullname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (user['email'] == 'bjayanta.neo@gmail.com' &&
                    user['password'] == '123456') {
                  Navigator.pushNamed(context, '/cal', arguments: data);
                } else {
                  // dialog box
                  // with message
                }

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //     return Calculator();
                //   }
                //   ),
                // );
              },
              child: Text(
                "Calculator",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: nameCtrl,
                    onChanged: (nameCtrl) {
                      setState(() {
                        fullname = nameCtrl;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Write your name",
                        labelText: "Name",
                        hintStyle: TextStyle(fontSize: 10.0),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.abc)),
                  ),
                  Text("$fullname"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Write your number",
                    hintStyle: TextStyle(fontSize: 10.0),
                    labelText: "Number",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.phone_android)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
