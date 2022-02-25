import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/productCards.dart';
import 'package:flutter_application_5/productviewpage.dart';
import 'product.dart';

class productCards extends StatefulWidget {
  const productCards({Key? key}) : super(key: key);

  @override
  _productCardsState createState() => _productCardsState();
}

class _productCardsState extends State<productCards> {
  List<Widget> cardslist = [];
  data Data = data();
  List<Widget> cards() {
    for (int i = 0; i < Data.products.length; i++) {
      cardslist.add(Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      productviewpage(Product: Data.products[i])));
            },
            child: Center(
              child: SizedBox(
                width: 300,
                height: 200,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Stack(
                          children: [
                            Image.asset("images/${Data.products[i].image}"),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (Data.products[i].fav == true) {
                                      Data.products[i].fav = false;
                                    } else {
                                      Data.products[i].fav = true;
                                    }
                                  });
                                  print(Data.products[i].fav);
                                },
                                child: Icon(Icons.favorite,
                                    color: Data.products[i].fav
                                        ? Colors.red
                                        : Colors.black45),
                              ),
                            )
                          ],
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${Data.products[i].ProductName}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${Data.products[i].price}\$",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )));
    }
    return cardslist;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: cards(),
    );
  }
}
