import 'package:flutter/material.dart';
import 'package:shop_app/components/product_cart.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ListProduct extends StatelessWidget {
  final products;
  const ListProduct({
    Key key,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("trang list");
    print(products);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 4),
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: GridView.builder(
          controller: new ScrollController(keepScrollOffset: true),
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
            product: products[index],
          ),
        ),
      ),
    );
  }
}