import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/screens/details/components/box_attribute.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductClassify extends StatelessWidget {
  final String title;
  const ProductClassify({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
    this.title,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title+" :",
                style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
              ),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  box_attribute(title: "Đỏ Vàng"),
                  box_attribute(title: "Xanh"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


