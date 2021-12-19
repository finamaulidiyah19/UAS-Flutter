import 'package:flutter/material.dart';
import 'package:belajar_flutter/pages/product_details.dart';

class Kategoriproducts extends StatefulWidget {
  @override
  _KategoriproductsState createState() => _KategoriproductsState();
}

class _KategoriproductsState extends State<Kategoriproducts> {
  var kategoriproductlist = [
    {
      "name": "Jeans",
      "picture": "images/products/jeans2.jpg",
      "old_price": 120000,
      "price": 85000,
    },
    {
      "name": "Jeans",
      "picture": "images/products/jeans4.png",
      "old_price": 100000,
      "price": 70000,
    },
    {
      "name": "Jeans",
      "picture": "images/products/jeans5.jpg",
      "old_price": 80000,
      "price": 50000,
    },
    {
      "name": "Jeans",
      "picture": "images/products/jeans6.jpg",
      "old_price": 90000,
      "price": 60000,
    },
    {
      "name": "Jeans",
      "picture": "images/products/jeans7.jpg",
      "old_price": 85000,
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
        itemCount: kategoriproductlist.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Singleprod(
              kategoriprodname: kategoriproductlist[index]['name'],
              kategoriprodpricture: kategoriproductlist[index]['picture'],
              kategoriprodoldprice: kategoriproductlist[index]['old_price'],
              kategoriprodprice: kategoriproductlist[index]['price'],
            ),
          );
        });
  }
}

class Singleprod extends StatelessWidget {
  final kategoriprodname;
  final kategoriprodpricture;
  final kategoriprodoldprice;
  final kategoriprodprice;

  const Singleprod(
      {Key key,
      this.kategoriprodname,
      this.kategoriprodpricture,
      this.kategoriprodoldprice,
      this.kategoriprodprice})
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
                    productdetailname: kategoriprodname,
                    productdetailnewprice: kategoriprodprice,
                    productdetailoldprice: kategoriprodoldprice,
                    productdetailpicture: kategoriprodpricture,
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
                            kategoriprodname,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\Rp. $kategoriprodprice",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  child: Image.asset(
                    kategoriprodpricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
