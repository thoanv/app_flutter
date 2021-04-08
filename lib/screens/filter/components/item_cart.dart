import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import 'package:intl/intl.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCart({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 

    return Container(
      
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            // decoration: BoxDecoration(
            //   color: Colors.black,
            // ),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 5),
                child: Image.network(product.images[0], fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // margin: const EdgeInsets.all(0),
              // height: 100,
              child: Text(
                product.name,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "${NumberFormat.currency(locale: 'vi', symbol: '₫').format(product.price)}",
                    
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 18),
                  )))
        ],
      ),
    );
  }
}
