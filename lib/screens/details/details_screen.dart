import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/coustom_bottom_detail.dart';

import '../../enums.dart';
import '../../models/Product.dart';
import 'components/body.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
      body: Body(product: agrs.product),
      bottomNavigationBar: CustomBottomDetail(selectedMenu: MenuState.home),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
