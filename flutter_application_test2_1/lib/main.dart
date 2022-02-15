import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Column(
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                  color: Colors.white70,
                  child: Center(
                    child: Text("item 1"),
                  ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("item 2"),
                  ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(
                  color: Colors.orange,
                  child: Center(
                    child: Text("item 3"),
                  )))
        ],
      ),
    ),
  ));
}
