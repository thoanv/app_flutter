import 'package:flutter/material.dart';
import 'package:shop_app/screens/filter/components/categories.dart';
import 'package:shop_app/screens/filter/components/type_filter.dart';

import 'filter_header.dart';

import '../../../size_config.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FilterHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TypeFilter(),
            const Divider(
              height: 2,
              thickness: 1,
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
