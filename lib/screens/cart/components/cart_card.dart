import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/screens/cart_details/cart_details_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(width: 10),
              Text("Davichat"),
              Spacer(),
              Text(
                "Hoàn thành",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            CartDetailsScreen.routeName,
            // arguments: ProductDetailsArguments(product: product),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 88,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    // padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    // decoration: BoxDecoration(
                    //     // color: Color(0xFFF5F6F9),
                    //     // borderRadius: BorderRadius.circular(15),
                    //     ),
                    child: Image.network(cart.product.images[0]),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cart.product.title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Trắng", style: TextStyle(color: Colors.black)),
                      SizedBox(width: 220),
                      Text("x${cart.numOfItem}",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${NumberFormat.currency(locale: 'vi', symbol: '₫').format(cart.product.price)}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red),
                  ),
                ],
              )),
            ],
          ),
        ),
        const Divider(
          height: 2,
          thickness: 1,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text("1 sản phẩm", style: TextStyle(color: Colors.black)),
            Spacer(),
            Text("Thành tiền:"),
            Text(
              "${NumberFormat.currency(locale: 'vi', symbol: '₫').format(cart.product.price)}",
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ],
        ),
        SizedBox(height: 10),
        const Divider(
          height: 2,
          thickness: 1,
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            print("Xem trạng thái");
          },
          child: Row(
            children: [
              Icon(
                Icons.directions_bus_sharp,
                color: Colors.teal,
                size: 16,
              ),
              Text("Đã giao hàng",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.teal))
            ],
          ),
        ),
        SizedBox(height: 5),
        const Divider(
          height: 2,
          thickness: 1,
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              child: Text("Mua lại"),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('mua lại');
              },
            )
          ],
        ),
        SizedBox(height: 5),
        const Divider(
          height: 1,
          thickness: 3,
        ),
      ],
    );
  }
}
