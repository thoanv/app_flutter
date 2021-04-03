import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}


// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title:
        "Tảo xoắn đại việt chất lượng cao Tảo xoắn đại việt chất lượng cao",
    price: 700000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 700000,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 700000,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 200000,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 900000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 9,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 10,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 11,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 12,
    images: [
      "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing. Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
