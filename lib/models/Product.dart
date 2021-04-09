import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:json_serializable/json_serializable.dart';
import 'package:shop_app/api/api.dart';
import 'package:shop_app/models/global.dart';

class Product {
  final int id;
  final String name, description, avatar;
  final List<String> images;
  final double star, price, discount;

  Product({
    @required this.id,
    @required this.images,
    this.avatar,
    this.star  = 4,
    @required this.name,
    @required this.discount = 200000,
    this.price  = 200000,
    @required this.description,
  });

  Product.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name= json['name'],
      images= json['images'],
      price= json['price'],
      discount= json['discount'],
      avatar= json['avatar'],
      description= json['description'],
      star= json['star'];

}
Future<List<Product>> fetchProducts(http.Client client) async {
  final response = await client.get(BASE_URL+'products');
  if (response.statusCode == 200) {
    Map<String, dynamic> mapResponse = json.decode(response.body);
    final products = mapResponse["data"].cast<Map<String, dynamic>>();
    List<Product> listOfProducts = await products.map<Product>((json){
      return Product.fromJson(json);
    }).toList();
    print(listOfProducts);
    return listOfProducts;
  } else {
    throw Exception('Unable to fetch products from the REST API');
  }
}

// Our demo Products

List<Product> products = [
  // Product(
  //   id: 1,
  //   images: [
  //     "https://cdn.davichat.info/images/products/5/san-pham-test1616640443935.jpg",
  //     "https://cdn.davichat.info/images/products/5/san-pham-test1616640443935.jpg",
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //   name: "Tảo xoắn đại việt chất lượng cao",
  //   price: 700000,
  //   description: description,
  //   star: 4.8,
  // ),
  // Product(
  //   id: 2,
  //   images: [
  //     "https://cdn.davichat.info/images/products/5/san-pham-test1616640443935.jpg",
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //   name: "Tốt rất Tảo xoắn đại việt chất lượng cao Tảo xoắn đại việt chất lượng cao rất là tuyệt vời với người dùng ",
  //   price: 700000,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 3,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //   name: "Gloves XC Omega - Polygon",
  //   price: 700000,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 4,
  //   images: [
  //     "https://cdn.davichat.info/images/products/5/san-pham-test1616640443935.jpg",
  //   ],
  //   name: "Logitech Head",
  //   price: 200000,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 5,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Wireless Controller for PS4™",
  //   price: 900000,
  //   description: description,
  //   star: 4.8,
  // ),
  // Product(
  //   id: 6,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Nike Sport White - Man Pant",
  //   price: 50.5,
  //   description: description,
  //   star: 4.1,
  //
  // ),
  // Product(
  //   id: 7,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Gloves XC Omega - Polygon",
  //   price: 36.55,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 8,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Logitech Head",
  //   price: 20.20,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 9,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Gloves XC Omega - Polygon",
  //   price: 36.55,
  //   description: description,
  //   star: 4.1,
  // ),
  // Product(
  //   id: 10,
  //   images: [
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRszZuaV_1IEGyYWERDbVnEYyS1RR-sHw-3Lg&usqp=CAU",
  //   ],
  //
  //   name: "Logitech Head",
  //   price: 20.20,
  //   description: description,
  //   star: 4.1,
  //
  // ),
  // Product(
  //   id: 11,
  //   images: [
  //     "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg",
  //   ],
  //
  //   name: "Gloves XC Omega - Polygon",
  //   price: 36.55,
  //   description: description,
  //   star: 4.1,
  // ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing. Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
