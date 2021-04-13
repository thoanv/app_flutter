import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/coustom_bottom_detail.dart';

import '../../enums.dart';
import '../../models/Product.dart';
import 'components/body.dart';
import 'package:http/http.dart' as http;

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = "/details";
  var data;

  @override
  _DetailsScreenState createState() => new _DetailsScreenState();
}
class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    var product_id = agrs.product_id;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
      body: FutureBuilder(
        future: fetchProduct(http.Client(), 'products/'+product_id.toString()),
          builder: (context, snapshot){
            if(snapshot.hasError){
              print(snapshot.error);
            }
            return snapshot.hasData ? Body(product: snapshot.data): Center(child: CircularProgressIndicator());
          }
      ),
      // body: Body(product: agrs.product),
      bottomNavigationBar: FutureBuilder(
          future: fetchProduct(http.Client(), 'products/'+product_id.toString()),
          builder: (context, snapshot){
            if(snapshot.hasError){
              print(snapshot.error);
            }
            return snapshot.hasData ? CustomBottomDetail(product: snapshot.data): Center(child: CircularProgressIndicator());
          }
      ),
    );
  }
}

class ProductDetailsArguments {
  final product_id;

  ProductDetailsArguments({@required this.product_id});
}
