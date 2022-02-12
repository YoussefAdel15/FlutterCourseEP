import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Home"),
    ),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text("info")),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Name")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(99, 1, 59, 112),
                child: Center(child: Text("Youssef")),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Name")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(99, 1, 59, 112),
                child: Center(child: Text("Baher")),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Name")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(99, 1, 59, 112),
                child: Center(child: Text("Youssef")),
              )
            ],
          )
        ]),
  )));
}
