import 'package:flutter/material.dart';

class Product {
  final String image, title, description;

  final int price, size, id;

  final Color color;

  Product(
      {required this.id,
      required this.image,
      required this.description,
      required this.price,
      required this.color,
      required this.size,
      required this.title});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Bag 1",
    price: 234,
    size: 12,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag2.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Bag 2",
    price: 300,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag2.png",
    color: const Color(0xFF989493),
  ),
  Product(
    id: 3,
    title: "Bag 3",
    price: 234,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag1.png",
    color: const Color(0xFFE6B398),
  ),
  Product(
    id: 3,
    title: "Bag 4",
    price: 234,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag1.png",
    color: const Color(0xFFFB7883),
  ),
  Product(
    id: 3,
    title: "Bag 3",
    price: 234,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag1.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
    id: 3,
    title: "Bag 3",
    price: 234,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag1.png",
    color: const Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Shoe",
    price: 311,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/s5.png",
    color: const Color(0xFF989493),
  ),
  Product(
    id: 3,
    title: "Bag 3",
    price: 234,
    size: 11,
    description:
        "This is a good product and trending in the Market right now it is portable to all kinds of individuals" +
            " its price is affordable to the pockecks of any intrested individual .",
    image: "assets/images/handbag2.png",
    color: const Color(0xFF3D82AE),
  ),
];
