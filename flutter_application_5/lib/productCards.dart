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
  List<IconData> love = [Icons.favorite_border, Icons.favorite];
  int loveindex = 0;
  List<Widget> cardslist = [];
  List<Color> color = [Colors.black, Colors.red];
  data Data = data();
  int i = 0;
  List<Widget> cards() {
    for (i; i < Data.products.length; i++) {
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
                                  if (Data.products[0].getFav()) {
                                    Data.products[0].setFav(false);
                                  } else {
                                    Data.products[0].setFav(true);
                                  }
                                  print(Data.products[0].getFav());
                                },
                                child: Icon(love[loveindex],
                                    color: color[loveindex], size: 40),
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
