import 'package:flutter/material.dart';
import 'package:shop_app/screens/status/components/body.dart';


class StatusScreen extends StatelessWidget {
  static String routeName = "/status";
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