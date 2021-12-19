import 'package:flutter/material.dart';

class Cartproducts extends StatefulWidget {
  @override
  _CartproductsState createState() => _CartproductsState();
}

class _CartproductsState extends State<Cartproducts> {
  var productsonthecart = [
    {
      "name": "Heels",
      "picture": "images/products/heels1.jpg",
      "price": 85000,
      "size": "39",
      "color": "Army",
      "quantity": 1,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress4.jpg",
      "price": 70000,
      "size": "38",
      "color": "Hijau",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productsonthecart.length,
        itemBuilder: (context, index) {
          return Singlecartproduct(
            cartprodname: productsonthecart[index]["name"],
            cartprodcolor: productsonthecart[index]["color"],
            cartprodqty: productsonthecart[index]["quantity"],
            cartprodsize: productsonthecart[index]["size"],
            cartprodprice: productsonthecart[index]["price"],
            cartprodpricture: productsonthecart[index]["picture"],
          );
        });
  }
}

class Singlecartproduct extends StatelessWidget {
  final cartprodname;
  final cartprodpricture;
  final cartprodprice;
  final cartprodsize;
  final cartprodcolor;
  final cartprodqty;

  Singlecartproduct(
      {this.cartprodname,
      this.cartprodcolor,
      this.cartprodprice,
      this.cartprodpricture,
      this.cartprodqty,
      this.cartprodsize});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======== LEADING SECTION ========
        leading: new Image.asset(
          cartprodpricture,
          width: 80.0,
          height: 80.0,
        ),

        // ======== TITLE SECTION ========
        title: new Text(cartprodname),

        // ======== SUBTITLE SECTION ========
        subtitle: new Column(
          children: <Widget>[
            // ROW INSIDE THE COLUMN
            new Row(
              children: <Widget>[
                // this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cartprodsize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                // ========= This section of for the product color ==========

                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cartprodcolor,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            // ======== THIS SECTION IS FOR THE PRODUCT PRICE =========
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\Rp. $cartprodprice",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),

        // trailing: new Column(
        //   children: <Widget>[
        //     new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
        //     new Text("$cartprodqty"),
        //     new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
        //   ],
        // ),
      ),
    );
  }
}
