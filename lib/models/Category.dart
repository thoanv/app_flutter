import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/models/global.dart';

class Category {
  final int id;
  final String name, avatar, slug;

  Category({
    @required this.id,
    this.avatar,
    @required this.name,
    @required this.slug,
  });

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        avatar = json['avatar'],
        slug = json['slug'];
}
Future<List<Category>> fetchCategories(http.Client client, appUrl, queryParameters) async {
  var uri = Uri.https(BASE_URL, appUrl, queryParameters);
  var response = await http.get(uri, headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  // parent
  if (response.statusCode == 200) {
    Map<String, dynamic> mapResponse = json.decode(response.body);
    final categories = mapResponse["data"].cast<Map<String, dynamic>>();
    List<Category> listOfCategories = await categories.map<Category>((json) {
      return Category.fromJson(json);
    }).toList();

    return listOfCategories;
  } else {
    throw Exception('Unable to fetch categories from the REST API');
  }
}
