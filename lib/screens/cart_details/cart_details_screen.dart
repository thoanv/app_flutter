import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart_details/components/body.dart';

class CartDetailsScreen extends StatelessWidget {
  static String routeName = "/cart_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Thông Tin Đơn Hàng",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
