import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/cart_details/components/cart_details_card.dart';
import 'package:shop_app/screens/cart_details/components/cart_status.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartStatus(),
        CartDetailsCard(),
      ],

      // ),
    );
  }
}
