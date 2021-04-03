import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class box_attribute extends StatelessWidget {
  final String image;
  final bool isSelected;

  const box_attribute({
    Key key,
    this.image,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 3),
      width: 60,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        border: Border.all(
          color: isSelected ? Colors.green : Colors.black38,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(image),
    );
  }
}