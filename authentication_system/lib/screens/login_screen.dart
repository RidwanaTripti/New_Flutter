import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        backgroundColor: Colors.black,
        titleSpacing: 3,
        elevation: 15.0,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        centerTitle: true,
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      body: Textfield(),
    );
  }
}

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  final user = {'email': 'ABC1310@gmail.com', 'password': '757575'};
  TextEditingController _user = TextEditingController();
  String _email = '';
  TextEditingController _users = TextEditingController();
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Log In First..",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(height: 100.0),
                TextField(
                  controller: _user,
                  onChanged: (_user) {
                    setState(() {
                      _email = _user;
                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[600],
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 13.0),
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.white,
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 15)),
                ),
                //Text('$_email')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: _users,
                  onChanged: (_users) {
                    setState(() {
                      _password = _users;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[600],
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 13.0),
                    suffixIcon: Icon(Icons.visibility),
                    suffixIconColor: Colors.black,
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  obscureText: true,
                  maxLength: 8,
                ),
                // Text('$_password')
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          ElevatedButton(
            onPressed: () {
              if (user['email'] != _email && ['password'] != _password) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Caution"),
                        content: Text(
                          "You have entered wrong Email Address and Password.Go to previous page.",
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Ok')),
                        ],
                      );
                    });
              } else {
                Navigator.pushNamed(context, '/hom', arguments: user);
              }
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
                primary: Colors.grey[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textStyle: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
