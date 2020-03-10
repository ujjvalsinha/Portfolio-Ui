import 'package:flutter/material.dart';
import 'package:flutter_app/Profile.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
 final nameobj=TextEditingController();
 final emailobj=TextEditingController();
 final mobobj=TextEditingController();
 final passobj=TextEditingController();
 final repassobj=TextEditingController();
  String txt="";
  int count=0;
  Color col;
  bool a=false;
  check() {
    for (int i = 0; i < passobj.text.length; i++) {
      bool c = ("0".compareTo(passobj.text[i]) <= 0 &&
          "9".compareTo(passobj.text[i]) >= 0);
      if (c) {
        count++;
      }
    }
    bool special = passobj.text
        .contains(new RegExp(r'[ !"#$%&()*+,-./:;<=>?@[]\^_`{|}~]'));
    setState(() {
      if (nameobj.text.contains(RegExp(r'[\d]')) || nameobj.text.isEmpty) {
        txt = "Please Enter Valid Name";
        col = Colors.red;
      } else if (emailobj.text.isEmpty || emailobj.text.isEmpty) {
        txt = "Plese Enter Valid Email ID";
        col = Colors.red;
      } else if (mobobj.text.length != 10 || mobobj.text.isEmpty) {
        txt = "Please Enter Valid Number";
        col = Colors.red;
      } else if (passobj.text.length < 10) {
        txt = "Password should have atleast 10 character ";
        col = Colors.red;
      } else if (count < 2) {
        txt = "Password should have 2 digits";
        col = Colors.red;
      } else if (special) {
        txt = "Password should not have any special character";
        col = Colors.red;
      } else if (repassobj.text.isEmpty || repassobj.text != passobj.text) {
        txt = "Both Password Should Be Same";
        col = Colors.red;
      } else {

        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile(nameobj.text)),
                    );
                  
        
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
                  child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 4),
                  child: new FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Welcome,",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Sign Up to continue,",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                  child: TextField(
                    controller:nameobj ,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF4834DF))),
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Name",
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 35,
                          color: Color(0xFF4834DF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: emailobj,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF4834DF))),
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Username",
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 28,
                          color: Color(0xFF4834DF),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                  child: TextField(
                    controller: mobobj,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF4834DF))),
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.phone_android,
                          size: 28,
                          color: Color(0xFF4834DF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: passobj,
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF4834DF))),
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 28,
                          color: Color(0xFF4834DF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 9),
                  // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                  child: TextField(
                    controller: repassobj,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF4834DF))),
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Verify Password",
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 28,
                          color: Color(0xFF4834DF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 9, 25, 15),
                ),
                MaterialButton(
                    color: Color(0xFF4834DF),
                    height: 50,
                    minWidth: 365,
                    splashColor: Colors.green,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                       check(); 
                     
                   }

                    ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 15),
                ),
                SizedBox(
                  height: 2,
                  width: 365,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 15),
                ),
                MaterialButton(
                    color: Color(0xFF4834DF),
                    height: 50,
                    minWidth: 365,
                    splashColor: Colors.green,
                    child: Text(
                      "Already Have Account",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                    
                Container(
                  child: Text(
                    txt,
                    style: TextStyle(fontSize: 25, color: col),
                  ),
                ),
                Container(
                   // margin: EdgeInsets.only(top: 35),
                    child: Text(
                      "  Created by Ujjval Sinha  ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
