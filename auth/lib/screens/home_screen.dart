import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final user = {'email': 'ABC1310@gmail.com', 'password': '757575'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: inputfield(
              hint: "example@something.com",
              label: "Email",
              icon: Icon(Icons.email),
              ctrl: emailCtrl,
              ispassword: false,
              tripti: () {},
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: inputfield(
                label: "Password",
                hint: "*******",
                icon: Icon(Icons.lock),
                ctrl: passCtrl,
                ispassword: true,
                tripti: () {}),
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width, 50)),
            onPressed: () {
              Navigator.pushNamed((context), '/Dashbord', arguments: user);
            },
            child: Text("Login"),
          ),
        ],
      )),
    );
  }
}

Widget inputfield({
  required label,
  required hint,
  required icon,
  required ctrl,
  required tripti,
  required ispassword,
}) =>
    TextField(
      controller: ctrl,
      obscureText: ispassword,
      decoration: InputDecoration(
        hintText: "$hint",
        labelText: "$label",
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.grey)),
        suffixIcon: icon,
      ),
      onChanged: (ctrl) {
        return tripti();
      },
    );
