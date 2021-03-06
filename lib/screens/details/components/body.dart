import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/information_shop.dart';
import 'package:shop_app/screens/details/components/product_classify.dart';
import 'package:shop_app/screens/details/components/product_title.dart';
import 'package:shop_app/screens/details/components/related_products.dart';
import 'package:shop_app/size_config.dart';

import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: [
            ProductImages(product: product),
            TopRoundedContainer(
              check: true,
              color: Colors.white,
              child: Column(
                children: [
                  ProductTitle(product: product),
                  // ProductClassify(product: product, title: "Màu sắc"),
                  // ProductClassify(product: product, title: "Size"),
                  TopRoundedContainer(
                    check: product.name_group_one != null ? true : false,
                    color: Color(0xFFF6F7F9),
                    child: Row(
                      children: <Widget>[
                        Column(),
                      ],
                    ),
                  ),
                    ProductClassify(
                      check : product.name_group_one != null ? true : false,
                      product: product.name_group_one != null ? product : null,
                      press: () {
                        print("Chọn loại hàng");
                      },
                    ),
                  TopRoundedContainer(
                    check: true,
                    color: Color(0xFFF6F7F9),
                    child: Row(
                      children: <Widget>[
                        Column(),
                      ],
                    ),
                  ),
                  ProductDescription(
                    product: product,
                  ),
                  TopRoundedContainer(
                    check: true,
                    color: Color(0xFFF6F7F9),
                    child: Row(
                      children: <Widget>[
                        Column(),
                      ],
                    ),
                  ),
                  InformationShop(product: product),
                  TopRoundedContainer(
                    check: true,
                    color: Color(0xFFF6F7F9),
                    child: Row(
                      children: <Widget>[
                        Column(),
                      ],
                    ),
                  ),
                  RelatedProducts(booth_id: product.booth['id'] ),
                  TopRoundedContainer(
                    check: true,
                    color: Color(0xFFF6F7F9),
                    child: Row(
                      children: <Widget>[
                        Column(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
