import 'package:flutter/material.dart';
import 'package:belajar_flutter/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productlist = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer7.jpg",
      "old_price": 120000,
      "price": 85000,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress5.jpg",
      "old_price": 100000,
      "price": 70000,
    },
    {
      "name": "Heels",
      "picture": "images/products/heels4.png",
      "old_price": 100000,
      "price": 50000,
    },
    {
      "name": "Sweater",
      "picture": "images/products/sweater1.png",
      "old_price": 100000,
      "price": 50000,
    },
    {
      "name": "Short Skirt",
      "picture": "images/products/skrit3.jpg",
      "old_price": 100000,
      "price": 50000,
    },
    {
      "name": "Jeans",
      "picture": "images/products/jeans3.jpg",
      "old_price": 100000,
      "price": 50000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productlist.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Singleprod(
              prodname: productlist[index]['name'],
              prodpricture: productlist[index]['picture'],
              prodoldprice: productlist[index]['old_price'],
              prodprice: productlist[index]['price'],
            ),
          );
        });
  }
}

class Singleprod extends StatelessWidget {
  final prodname;
  final prodpricture;
  final prodoldprice;
  final prodprice;

  const Singleprod(
      {Key key,
      this.prodname,
      this.prodpricture,
      this.prodoldprice,
      this.prodprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  //here we are passing the values of the product to the product details page
                  builder: (context) => new ProductDetails(
                    productdetailname: prodname,
                    productdetailnewprice: prodprice,
                    productdetailoldprice: prodoldprice,
                    productdetailpicture: prodpricture,
                  ),
                ),
              ),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prodname,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\Rp. $prodprice",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prodpricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
