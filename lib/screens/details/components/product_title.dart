import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "\₫ 200.000",
                      style:TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
                    ),
                    SizedBox(width: getProportionateScreenWidth(5)),
                    Text(
                      "(\₫ 200.000)",
                      style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16, decoration: TextDecoration.lineThrough),
                    ),
                ],
                ),
              ],
            )
        ),

        Padding(
            padding: EdgeInsets.all(kDefaultPadding/2),
            child: Column(
            children: <Widget>[
              Row(
                  children: <Widget>[
                    RatingBarIndicator(
                      rating: product.rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                    SizedBox(width: getProportionateScreenWidth(5)),
                    Text(
                      " ${product.rating}",
                        style:TextStyle(fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 18),
                    ),
                    SizedBox(width: getProportionateScreenWidth(10)),
                    Text("|"),
                    SizedBox(width: getProportionateScreenWidth(10)),
                    Text(
                        "Đã bán 4k",
                        style:TextStyle(fontWeight: FontWeight.bold,  fontSize: 16,),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      product.isFavourite ? "assets/icons/heart.svg" : "assets/icons/heart_red.svg",
                      height: 20,
                    ),
                  ]
              )

            ],
          ),
        ),
      ],
    );
  }
}
