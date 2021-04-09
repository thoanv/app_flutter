import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:http/http.dart' as http;
import '../../../size_config.dart';
import 'list_products.dart';
import 'section_title.dart';

class PopularProducts extends StatefulWidget {
  @override
  _PopularProductState createState() => new _PopularProductState();
}
class _PopularProductState extends State<PopularProducts>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: fetchProducts(http.Client(), 'products'),
        builder: (context, snapshot){
          if(snapshot.hasError){
            print(snapshot.error);
          }
          return snapshot.hasData ? ShowListProduct(products: snapshot.data): Center(child: CircularProgressIndicator());
        }
      )
    );
  }
}

class ShowListProduct extends StatelessWidget {
  final List<Product> products;
  const ShowListProduct({
    Key key,
    this.products,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Sản phẩm", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        ListProduct(products: products),
      ],
    );
  }
}



