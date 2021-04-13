import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    @required this.color,
    @required this.child,
    this.check,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final check;

  @override
  Widget build(BuildContext context) {
    if(check){
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
        padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(40),
          //   topRight: Radius.circular(40),
          // ),
        ),
        child: child,
      );
    }else{
      return Container();
    }
  }
}
