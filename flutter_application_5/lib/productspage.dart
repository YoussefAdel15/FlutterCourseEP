import 'package:flutter/material.dart';
import 'package:flutter_application_5/favoritePage.dart';
import 'productCards.dart';

class productspage extends StatefulWidget {
  const productspage({Key? key}) : super(key: key);

  @override
  _productspageState createState() => _productspageState();
}

class _productspageState extends State<productspage> {
  final Screens = [
    productCards(),
    favoritePage(),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("Profile"),
    )
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 150, 149),
        title: Center(
          child: Text("SeTronics",
              style: TextStyle(
                color: Color.fromARGB(115, 32, 11, 11),
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
        ),
        actions: [gradlist()],
      ),
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: "Profile",
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}

class gradlist extends StatefulWidget {
  const gradlist({Key? key}) : super(key: key);

  @override
  _gradlistState createState() => _gradlistState();
}

class _gradlistState extends State<gradlist> {
  final List<IconData> view = [Icons.grid_3x3, Icons.view_list];
  bool isGridView = false;
  int viewtype = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Function,
      child: Icon(view[viewtype], size: 24.0, color: Colors.black),
    );
  }

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
}
