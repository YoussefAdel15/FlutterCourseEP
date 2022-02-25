// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_application_5/product.dart';

class productviewpage extends StatelessWidget {
  final product Product;
  productviewpage({Key? key, required this.Product}) : super(key: key);
  int favView = 1;
  List<IconData> Fav = [Icons.favorite_border, Icons.favorite];
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_constructors
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 2,
            child: Stack(
              children: [
                Image.asset("images/${Product.image}"),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: IconButton(
                      onPressed: () {
                        if (Product.fav) {
                          Product.fav = false;
                        } else {
                          Product.fav = true;
                        }
                        print(Product.fav);
                      },
                      icon: Icon(Icons.favorite,
                          color: Product.fav == true
                              ? Colors.red
                              : Colors.black45)),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Text(
              "${Product.ProductName}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Text(
              "${Product.descreption}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Text(
              "${Product.price}\$",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
