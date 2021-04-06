import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "Đồng Hồ"},
      {"text": "Quần Áo"},
      {"text": "Máy Tính"},
      {"text": "Điện Thoại"},
      {"text": "Điện Thoại"},
      {"text": "Xem Thêm"},
      {"text": "Điện Thoại"},
      {"text": "Xem Thêm"},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(90),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(6)),
              height: getProportionateScreenWidth(30),
              width: getProportionateScreenWidth(80),
              decoration: BoxDecoration(
                  // color: Color(0x3C979797),
                  // borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                color: Colors.green,
              )),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
