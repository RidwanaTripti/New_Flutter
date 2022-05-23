import 'package:flutter/material.dart';

class FirstPAge extends StatelessWidget {
  const FirstPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Log In"),
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        shadowColor: Colors.indigoAccent,
      ),
      body: LoginField(),
    );
  }
}

class LoginField extends StatefulWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  TextEditingController users = TextEditingController();
  final user = {'email': 'ridwanaakter17@gmail.com', 'password': '757575'};

  final emailctrl = TextEditingController();
  final passwordctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "You have to log in first",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 90.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: infield(
              hint: "@gamil.com",
              label: "Email",
              icon: Icons.email,
              isPassword: false,
              helper: "Write your email",
              contl: users,
            ),
          ),
          /*
          Padding(
           padding: const EdgeInsets.all(8.0),
            child: infield(
                hint: "********",
                label: "Password",
                icon: Icon(Icons.lock),
                isPassword: true,
                helper: "Write your password"),
            // contl: emailctrl,
          ), 
          */
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  onPressed: () {
                    if (user['email'] != emailctrl &&
                        ['password'] != passwordctrl) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Caution!"),
                              content: Text(
                                  "You have entered invalid email or password.\nGo to previous page"),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK"))
                              ],
                            );
                          });
                    } else {
                      Navigator.pushNamed(context, '/log');
                    }
                  },
                  child: Text("Login", style: TextStyle(color: Colors.black))),
            ),
          ),
        ],
      ),
    );
  }
}

Widget infield({
  required hint,
  required label,
  required icon,
  required isPassword,
  required helper,
  required contl,
}) =>
    TextField(
      controller: contl,
      obscureText: isPassword,
      decoration: InputDecoration(
        helperText: "$helper",
        helperStyle: TextStyle(color: Colors.black),
        hintText: "$hint",
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
        labelText: "$label",
        labelStyle: TextStyle(color: Colors.black),
        suffixIcon: Icon(icon),
        border: InputBorder.none,
        fillColor: Colors.indigo[300],
        filled: true,
      ),
    );
