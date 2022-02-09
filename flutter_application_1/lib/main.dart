import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 147, 150, 149),
          centerTitle: true,
          actions: [
            PopupMenuButton(
                itemBuilder: ((context) =>
                    [PopupMenuItem(child: Text("Youssef Created this"))]))
          ],
          title: Text(
            "First Assignment",
            style: TextStyle(
                color: Color.fromARGB(115, 32, 11, 11),
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20),
          height: 250,
          width: 250,
          alignment: Alignment.center,
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black, width: 40),
              shape: BoxShape.circle),
          child: Text(
              "My favorite hobby is Swimming , love it because it gives me strong arms",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 10,
              )),
        ))),
  ));
}
