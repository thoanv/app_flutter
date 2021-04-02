import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/constants.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCart({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
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
                padding: EdgeInsets.symmetric(horizontal : 5),
                // decoration: BoxDecoration(
                //   color: Colors.black,
                // ),
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(kDefaultPadding/5),
                    child: Image.network(
                        product.images[0],
                        fit:BoxFit.cover
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(kDefaultPadding/4),
                height: 200,
                child: Text(
                  product.title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    "\$${product.price}-${product.id}",
                    style:TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
                  )
              )
            ],

          ),
        ),
      ),

    );

  }
}