import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String name;
  Profile(this.name);
  @override
  _ProfileState createState() => _ProfileState(this.name);
}

class _ProfileState extends State<Profile> {
  String name;
  _ProfileState(this.name);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                height: 450,
                width: double.infinity,
                color: Color(0xFF4834DF),
              ),
              clipper: clip(),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("images/a.jpg"),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Programmer",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "39",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "21K",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "64",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Repository",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                    color: Color(0xFF4834DF),
                    height: 50,
                    minWidth: 200,
                    splashColor: Colors.green,
                    child: Text(
                      "Follow",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, 100);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
