import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/details/components/product_card.dart';
// import 'package:shop_app/screens/details/components/product_card.dart';

import '../../../size_config.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({
    Key key,
    @required this.booth_id,
  }) : super(key: key);
  final booth_id;

  @override
  Widget build(BuildContext context) {
    var queryParameters = {
      'status': '2',
      'booth' : this.booth_id.toString(),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: kDefaultPadding/2, left:kDefaultPadding/2,),
          child: Text(
              "Sản phẩm cùng shop",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18)
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        FutureBuilder(
            future: fetchProducts(http.Client(), 'products', queryParameters),
            builder: (context, snapshot){
              if(snapshot.hasError){
                print(snapshot.error);
              }
              return snapshot.hasData ? ListRelatedProducts(products: snapshot.data): Center(child: CircularProgressIndicator());
            }
        ),
      ],
    );
  }
}

class ListRelatedProducts extends StatelessWidget {
  const ListRelatedProducts({
    Key key, this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            products.length,
            (index) {
              return ProductCard(product: products[index]);

            },
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}

