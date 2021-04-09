import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shop_app/components/product_cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import '../../../constants.dart';

class ListProduct extends StatefulWidget {
  final List<Product> products;
  const ListProduct({
    Key key,
    this.products,
  }) : super(key: key);

  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  List products = [];
  bool isLoading = false;
  int pageCount = 1;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    ////LOADING FIRST  DATA
    addItemIntoLisT(1);

     _scrollController = new ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 4),
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: GridView.builder(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ProductCart(
            product: widget.products[index],
          ),
        ),
      ),
    );
  }

  //// ADDING THE SCROLL LISTINER
  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        print("comes to bottom $isLoading");
        isLoading = true;
        print(_scrollController.offset);
        if (isLoading) {
          print("RUNNING LOAD MORE");

          pageCount = pageCount + 1;

          addItemIntoLisT(pageCount);
        }
      });
    }
  }

  ////ADDING DATA INTO ARRAYLIST
  void addItemIntoLisT(var pageCount) {
    for (int i = (pageCount * 5) - 5; i < pageCount * 5; i++) {
      products.add(products);
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
