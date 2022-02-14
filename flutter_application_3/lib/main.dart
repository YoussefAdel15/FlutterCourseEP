import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isGridView = false;
  int viewtype = 0;
  final List<String> Products = [
    "AMD Ryzen 5 5600X",
    "AMD Ryzen 7 3700X",
    "ASUS Prime B450M-K",
    "Gigabyte GeForce RTX 3060 Ti",
    "Gigabyte GeForce RTX 3080 Ti",
    "Intel Core i5-11400",
    "Intel Core i7-11700K",
    "MSI Performance Gaming B450GPCMAXWIFI",
    "Nvidia GeForce GT 1030",
    "Cooler Master HYPER 212 SPECTRUM RGB CPU",
    "AORUS ATC800 CPU Cooler",
    "Seagate 4 TB External Hard Disk",
    "Transcend 4 TB External Hard Disk"
  ];
  final List<String> images = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "11.jpg",
    "12.jpg",
    "13.jpg"
  ];
  final List<int> price = [
    5000,
    5500,
    3800,
    20000,
    30000,
    3000,
    7000,
    3250,
    5000,
    1000,
    1800,
    2000,
    1850,
  ];
  final List<IconData> view = [Icons.grid_3x3, Icons.view_list];
  void Function() {
    setState(() {
      if (isGridView) {
        viewtype = 0;
        print(isGridView);
        isGridView = false;
      } else {
        viewtype = 1;
        print(isGridView);
        isGridView = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 150, 149),
        title: Center(
          child: Text(
            "SeTronics",
            style: TextStyle(
              color: Color.fromARGB(115, 32, 11, 11),
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: Function,
              child: Icon(view[viewtype], size: 24.0, color: Colors.black),
            ),
          )
        ],
      ),
      body: isGridView
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: Products.length,
              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  header: Center(
                      child: Center(
                          child: Text(
                    Products[index],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ))),
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/${images[index]}')),
                  footer: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Text(
                          "Price ${price[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white),
                        ),
                      ),
                      Container(
                        child: FavoriteButton(
                          valueChanged: (_) {},
                        ),
                      )
                    ],
                  ),
                );
              })
          : ListView.builder(
              itemCount: Products.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue[50],
                  child: ListTile(
                    leading: Image.asset('assets/${images[index]}'),
                    title: Text(Products[index]),
                    subtitle: Text('Price ${price[index]}'),
                    trailing: FavoriteButton(
                      valueChanged: (_) {},
                    ),
                  ),
                );
              }),
    );
  }
}
