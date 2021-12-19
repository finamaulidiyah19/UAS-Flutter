import 'package:flutter/material.dart';
import 'package:belajar_flutter/pages/product_details.dart';

class Favoriteproducts extends StatefulWidget {
  @override
  _FavoriteproductsState createState() => _FavoriteproductsState();
}

class _FavoriteproductsState extends State<Favoriteproducts> {
  var favoriteproductlist = [
    {
      "name": "Dress",
      "picture": "images/products/kemeja1.png",
      "old_price": 120000,
      "price": 85000,
    },
    {
      "name": "Dress",
      "picture": "images/products/kemeja2.jpg",
      "old_price": 100000,
      "price": 70000,
    },
    {
      "name": "Sweater Rajut",
      "picture": "images/products/kemeja3.jpg",
      "old_price": 100000,
      "price": 50000,
    },
    {
      "name": "Sweater Rajut",
      "picture": "images/products/kemeja4.jpg",
      "old_price": 100000,
      "price": 40000,
    },
    {
      "name": "Kemeja",
      "picture": "images/products/kemeja5.jpg",
      "old_price": 100000,
      "price": 45000,
    },
    {
      "name": "Kemeja",
      "picture": "images/products/kemeja6.jpg",
      "old_price": 100000,
      "price": 60000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: favoriteproductlist.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Singleprod(
              favoriteprodname: favoriteproductlist[index]['name'],
              favoriteprodpricture: favoriteproductlist[index]['picture'],
              favoriteprodoldprice: favoriteproductlist[index]['old_price'],
              favoriteprodprice: favoriteproductlist[index]['price'],
            ),
          );
        });
  }
}

class Singleprod extends StatelessWidget {
  final favoriteprodname;
  final favoriteprodpricture;
  final favoriteprodoldprice;
  final favoriteprodprice;

  const Singleprod(
      {Key key,
      this.favoriteprodname,
      this.favoriteprodpricture,
      this.favoriteprodoldprice,
      this.favoriteprodprice})
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
                    productdetailname: favoriteprodname,
                    productdetailnewprice: favoriteprodprice,
                    productdetailoldprice: favoriteprodoldprice,
                    productdetailpicture: favoriteprodpricture,
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
                            favoriteprodname,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\Rp. $favoriteprodprice",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        new IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  child: Image.asset(
                    favoriteprodpricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
