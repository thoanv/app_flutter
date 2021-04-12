import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/models/global.dart';

class Product {
  final int id,
      weight,
      length,
      width,
      height,
      amount,
      sold,
      favourite,
      booth_id,
      user_id;
  final String name, description, avatar, slug, name_group_one, created_at;
  final List<String> images;
  final List<dynamic> categories;
  final List<dynamic> name_group_two;
  final bool checkfavourite;
  var star, price, discount;
  Product({
    @required this.id,
    this.images,
    this.avatar,
    this.amount,
    @required this.slug,
    this.star,
    @required this.name,
    @required this.discount,
    this.price,
    @required this.description,
    this.sold,
    this.name_group_one,
    this.favourite,
    this.booth_id,
    this.user_id,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.created_at,
    this.categories,
    this.name_group_two,
    this.checkfavourite,
  });

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        images = json['images'],
        price = json['price'],
        discount = json['discount'],
        avatar = json['avatar'],
        description = json['description'],
        slug = json['slug'],
        amount = json['amount'],
        sold = json['sold'],
        name_group_one = json['name_group_one'],
        favourite = json['favourite'],
        booth_id = json['booth_id'],
        user_id = json['user_id'],
        weight = json['weight'],
        length = json['length'],
        width = json['width'],
        height = json['height'],
        created_at = json['created_at'],
        categories = json['categories'],
        name_group_two = json['name_group_two'],
        checkfavourite = json['checkfavourite'],
        star = json['star'];
}

Future<List<Product>> fetchProducts(http.Client client, appUrl, queryParameters) async {
  var uri = Uri.https(BASE_URL, appUrl, queryParameters);
  var response = await http.get(uri, headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  // final response = await http.get(uri);
  if (response.statusCode == 200) {
    Map<String, dynamic> mapResponse = json.decode(response.body);
    final products = mapResponse["data"].cast<Map<String, dynamic>>();

    List<Product> listOfProducts = await products.map<Product>((json) {
      return Product.fromJson(json);
    }).toList();

    return listOfProducts;
  } else {
    //print(response.statusCode);
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
