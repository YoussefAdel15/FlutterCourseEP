import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  List<double> size = [10.0, 20.0, 30.0, 40.0, 50.0];
  int index = 0;
  List<String> names = ["Hi", "Hello"];
  void fun1() {
    setState(() {
      if (counter < 4) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  void fun2() {
    setState(() {
      if (index == 0) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test 1"),
      ),
      body: Center(
          child: Container(
        height: 370,
        width: 295,
        color: Colors.black12,
        child: InkWell(
          onLongPress: fun2,
          onTap: fun1,
          child: Center(
            child: Text(names[index],
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: size[counter],
                )),
          ),
        ),
      )),
    );
  }
}
