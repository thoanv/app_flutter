import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';

class CartStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.teal[700],
            height: 80,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Đơn hàng đã hoàn thành",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    Text(
                      "Cám ơn bạn đã mua sắm tại Shoppe!",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 14),
                    )
                  ],
                ),
                SizedBox(width: 80),
                SvgPicture.asset(
                  "assets/icons/fake-news.svg",
                  width: 50,
                  color: Colors.white70,
                ),
              ],
            )),
      ],
    );
  }
}
