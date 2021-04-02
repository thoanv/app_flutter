import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class box_attribute extends StatelessWidget {
  final String title;
  final bool isSelected;

  const box_attribute({
    Key key,
    this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        border: Border.all(
          color: isSelected ? Colors.green : Colors.black38,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
          )),
    );
  }
}