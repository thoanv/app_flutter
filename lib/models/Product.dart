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
  final List<dynamic> images;
  final List<dynamic> categories;
  final List<dynamic> name_group_two;
  final bool checkfavourite;
  var star, price, discount, origin, booth;
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
    this.origin,
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
    this.booth,
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
        origin = json['origin'],
        booth = json['booth'],
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
    print(listOfProducts);
    return listOfProducts;
  } else {
    //print(response.statusCode);
    throw Exception('Unable to fetch products from the REST API');
  }
}
Future<Product> fetchProduct(http.Client client, appUrl) async {
  var uri = Uri.https(BASE_URL, appUrl);
  var response = await http.get(uri, headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  if (response.statusCode == 200) {
    var mapResponse = json.decode(response.body);
    var productMap = mapResponse["data"];
    Product product = new Product.fromJson(productMap);
    print(product);
    return product;
  }
}

// Our demo Products

List<Product> products = [
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing. Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing.Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
