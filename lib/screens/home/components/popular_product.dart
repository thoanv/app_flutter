import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: false),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCart(
                  product: demoProducts[index],
                ),
            ),
          ),
        ),

        // Expanded(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        //     child: GridView.builder(
        //       shrinkWrap: true,
        //       scrollDirection: Axis.vertical,
        //       itemCount: demoProducts.length,
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         mainAxisSpacing: 10,
        //         crossAxisSpacing: 10,
        //         childAspectRatio: 0.75,
        //       ),
        //       itemBuilder: (context, index) => ItemCart(
        //         product: demoProducts[index],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}


