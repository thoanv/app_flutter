import 'package:flutter/material.dart';


import '../../../size_config.dart';
import 'search_field.dart';


class FilterHeader extends StatelessWidget {
  const FilterHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchField(),
              ],
            ),
          ],
        ));
  }
}
