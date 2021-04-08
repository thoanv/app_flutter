import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),

                    ),
                    child: Hero(
                      tag: product.id.toString(),
                      child: Image.network(product.images[0], fit: BoxFit.fill),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                    child: Column(
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(color: Colors.black),
                          maxLines: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      "${NumberFormat.currency(locale: 'vi', symbol: '₫').format(product.price)}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Đã Bán 10K",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
