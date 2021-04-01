import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.black45
              ),
              child: Image.network(product.images[0]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4 ),
          child: Text(
            product.title,
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style:TextStyle(fontWeight: FontWeight.bold),
        )
      ],

    );
  }
}