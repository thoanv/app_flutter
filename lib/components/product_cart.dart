import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/constants.dart';
import 'package:intl/intl.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  final Function press;

  const ProductCart({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SizedBox(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                // decoration: BoxDecoration(
                //   color: Colors.black,
                // ),
                child: Expanded(
                  child: Container(
                    child: Image.network(product.avatar, fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // margin: const EdgeInsets.all(0),
                  // height: 100,
                  child: Text(
                    product.name.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "${NumberFormat.currency(locale: 'vi', symbol: '₫').format(1000)}",
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Đã Bán 10K",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                  ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
