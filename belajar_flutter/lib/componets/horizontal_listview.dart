import 'package:flutter/material.dart';

import 'package:belajar_flutter/pages/kategori.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/cats/1.jpg',
            imagecaption: 'shirt',
          ),
          Category(
            imagelocation: 'images/cats/2.jpg',
            imagecaption: 'dress',
          ),
          Category(
            imagelocation: 'images/cats/6.jpg',
            imagecaption: 'pants',
          ),
          Category(
            imagelocation: 'images/cats/3.jpg',
            imagecaption: 'formal',
          ),
          Category(
            imagelocation: 'images/cats/4.jpg',
            imagecaption: 'informal',
          ),
          Category(
            imagelocation: 'images/cats/5.jpg',
            imagecaption: 'shoes',
          ),
          Category(
            imagelocation: 'images/cats/7.jpg',
            imagecaption: 'jewellery',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({this.imagelocation, this.imagecaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => new Kategori()));
        },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imagelocation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imagecaption,
                style: new TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
