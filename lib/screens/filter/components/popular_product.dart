import 'package:flutter/material.dart';
import 'package:shop_app/components/product_cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';
import 'item_cart.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
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
        SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: true),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 7,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ProductCart(
                  product: demoProducts[index],
                ),
            ),
          ),
        ),
      ],
    );
  }
}


