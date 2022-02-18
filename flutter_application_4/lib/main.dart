// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 150, 149),
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Flexible(fit: FlexFit.tight, flex: 2, child: Cont1()),
            Flexible(fit: FlexFit.tight, flex: 4, child: Cont2()),
          ],
        ),
      ),
    );
  }
}

class Cont1 extends StatelessWidget {
  const Cont1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        color: Color.fromARGB(255, 147, 150, 149),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('images/SeTronics.png')),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                "LogIn",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(115, 32, 11, 11)),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                "Wellcom To SeTronics",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(115, 32, 11, 11)),
              ),
            ),
            Container(
              height: 20,
            )
          ],
        ));
  }
}

class Cont2 extends StatefulWidget {
  const Cont2({Key? key}) : super(key: key);

  @override
  State<Cont2> createState() => _Cont2State();
}

class _Cont2State extends State<Cont2> {
  int visibility = 0;
  bool isVisiable = true;
  int conditionV = 0;
  final List<IconData> v = [Icons.visibility, Icons.visibility_off];
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String inputName = '';
  String inputPass = '';
  final List<String> Usernames = ["Youssef Adel", "Ahmed", "YoussefAdel123"];
  final List<String> Passwords = ["123456", "Ahmed123", "1552001"];
  final List<String> Conditions = [
    " ",
    "Login Successfully",
    "Invalid Password",
    "Invalid Username",
    "Invalid Username and Password"
  ];
  void Visibility() {
    setState(() {
      if (visibility == 0) {
        visibility = 1;
        isVisiable = false;
      } else {
        visibility = 0;
        isVisiable = true;
      }
    });
  }

  void fun() {
    bool usernameFound = false;
    bool passwordFound = false;
    setState(() {
      inputName = myController1.text;
      inputPass = myController2.text;
      for (int i = 0; i < Usernames.length; i++) {
        if (inputName == Usernames[i] && inputPass == Passwords[i]) {
          conditionV = 1;
          break;
        } else if (inputName == Usernames[i] && inputPass != Passwords[i]) {
          conditionV = 2;
          break;
        } else if (inputName != Usernames[i] && inputPass == Passwords[i]) {
          conditionV = 3;
          break;
        } else {
          conditionV = 4;
        }
      }
    });
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Massage From The Creator (Youssef Adel)"),
          content: new Text("Wait For Version 2    :)"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
            width: screenWidth,
            height: 50,
            child: Center(
              child: Text(
                Conditions[conditionV],
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
          TextField(
            controller: myController1,
            maxLength: 15,
            decoration: InputDecoration(
                hintText: 'Enter Your UserName',
                labelText: 'UserName',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                suffixIcon: Icon(Icons.person),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 147, 150, 149)),
                  borderRadius: BorderRadius.circular(25.7),
                )),
            keyboardType: TextInputType.text,
          ),
          TextField(
            controller: myController2,
            maxLength: 15,
            obscureText: isVisiable,
            decoration: InputDecoration(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(v[visibility]),
                  onPressed: Visibility,
                ),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 147, 150, 149)),
                  borderRadius: BorderRadius.circular(25.7),
                )),
            keyboardType: TextInputType.text,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    child: Text("Reset Password"),
                    onPressed: () {
                      setState(() {
                        myController2.clear();
                      });
                    })
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 114, 112, 112),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    onPressed: () {
                      _showDialog(context);
                    },
                    child: Text('SignUp')),
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 114, 112, 112),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    onPressed: fun,
                    child: Text('LogIn')),
              )
            ],
          ),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
