// import 'package:flutter/material.dart';
// import 'package:audiomain/routs.dart' as route;

class Product {
  final String image, title, title2;
  final int price;
  final double indent;
  // final Function()? press;

  const Product({
    required this.indent,
    required this.title,
    required this.title2,
    required this.price,
    required this.image,
  });
}

List<Product> demo_product = [
  const Product(
    image: "assets/images/image2.png",
    title: "TMA-2",
    title2: "HD Wireless",
    price: 350,
    indent: 0,
  ),
  const Product(
    image: "assets/images/image1.png",
    title: "CO2 - Cable",
    title2: "",
    price: 25,
    indent: 10,
  ),
  const Product(
    image: "assets/images/image2.png",
    title: "TMA-2",
    title2: "HD Wireless",
    price: 350,
    indent: 0,
  ),
];
