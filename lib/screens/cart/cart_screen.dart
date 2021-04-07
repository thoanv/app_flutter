import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.blue,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Tất cả",
              ),
              Tab(
                text: "Chờ xác nhận",
              ),
              Tab(
                text: "Chờ xác lấy hàng",
              ),
              Tab(
                text: "Hoàn thành",
              ),
              Tab(
                text: "Đã hủy",
              ),
            ],
          ),
          title: Text('Đơn hàng'),
        ),
        body: Body(),
        // bottomNavigationBar: CheckoutCard(),
      ),
    );
  }

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar(
  //     title: Column(
  //       children: [
  //         Text(
  //           "Your Cart",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         Text(
  //           "${demoCarts.length} items",
  //           style: Theme.of(context).textTheme.caption,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
