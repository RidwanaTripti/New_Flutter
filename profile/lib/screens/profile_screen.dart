import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double cover = 200;
  final double profile = 90;
  @override
  Widget build(BuildContext context) {
    final double top = cover - profile;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1653053151858-7ff5d40231e4?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&auto=format&fit=crop&w=500',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.only(bottom: profile),
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1653158082847-af4c4cb37014?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=803'),
                ),
              )
            ],
          ),
          buildContant(),
        ],
      ),
    );
  }

  Widget buildContant() => Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'YOUR NAME',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Text('Job Description'),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: buildSocialContant(),
          ),
          buildInfoNumber(),
          buildInfoContant(),
          SizedBox(height: 10),
          Divider(),
          buildAbout()
        ],
      );
  Widget buildSocialContant() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialButton(FontAwesomeIcons.facebook),
          SizedBox(width: 40),
          buildSocialButton(FontAwesomeIcons.instagram),
          SizedBox(width: 40),
          buildSocialButton(FontAwesomeIcons.youtube),
          SizedBox(width: 40),
          buildSocialButton(FontAwesomeIcons.linkedin)
        ],
      );
  Widget buildSocialButton(icon) => Material(
        child: InkWell(
          child: CircleAvatar(
            child: Icon(icon),
          ),
          onTap: () {
            // print("clickable");
          },
        ),
      );

  Widget buildInfoNumber() => Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "58",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 150),
            // VerticalDivider(),
            Text("820", style: TextStyle(color: Colors.black)),
            SizedBox(width: 130),
            //VerticalDivider(),
            Text("1507", style: TextStyle(color: Colors.black)),
          ],
        ),
      );

  Widget buildInfoContant() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Projects", style: TextStyle(color: Colors.black)),
          SizedBox(width: 100),
          Text("Followers", style: TextStyle(color: Colors.black)),
          SizedBox(width: 100),
          Text("Following", style: TextStyle(color: Colors.black)),
        ],
      );

  Widget buildAbout() => Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                child: Text("Overview"),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Work and education"),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Places lived"),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Contact"),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Details about you"),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Life events"),
                onPressed: () {},
              )
            ],
          ),
        ),
      );
}
