import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/box_attribute.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductClassify extends StatelessWidget {
  const ProductClassify({
    Key key,
    @required this.product,
    this.press,
    this.check,
  }) : super(key: key);
  final Product product;
  final GestureTapCallback press;
  final check;
  @override
  Widget build(BuildContext context) {
    if (check) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        margin: EdgeInsets.symmetric(vertical: 8),
        child: GestureDetector(
          onTap: () {
            print("Chọn loại hàng");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Chọn loại hàng :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/icons/arrow_right.svg')
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                    box_attribute(
                        image: "assets/images/ps4_console_blue_4.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }else{
      return Container();
    }
  }
}
