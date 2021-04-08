import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/product_cart.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/cart_details/cart_details_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CartDetailsCard extends StatelessWidget {
  final Product product;
  final Function press;
  const CartDetailsCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.directions_bus_sharp,
                    color: Colors.teal,
                    size: 16,
                  ),
                  Text("Thông tin vận chuyển",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16))
                ],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Text(
                  "Giao hàng tiết kiệm",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          const Divider(
            height: 2,
            thickness: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.teal,
                    size: 16,
                  ),
                  Text("Địa chỉ nhận hàng",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16))
                ],
              ),
              SizedBox(height: 5),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vũ Văn Thơ",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      Text(
                        "0123456789",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      Text(
                        "87 Tô Vĩnh Diện, Phường Khương Trung, Quận Thanh Xuân, Hà Nội",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  )),
              SizedBox(height: 5),
              const Divider(
                height: 2,
                thickness: 2,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Xem Shop >",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(5)),
              ),
              const Divider(
                height: 2,
                thickness: 2,
              ),
            ],
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
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
                      child: Image.network(
                          "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tảo xoắn đại việt chất lượng cao",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Trắng", style: TextStyle(color: Colors.black)),
                        Spacer(),
                        Text("x1",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "700.000₫",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.red),
                    ),
                  ],
                )),
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
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
                      child: Image.network(
                          "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tảo xoắn đại việt chất lượng cao",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Trắng", style: TextStyle(color: Colors.black)),
                        Spacer(),
                        Text("x1",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "700.000₫",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.red),
                    ),
                  ],
                )),
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
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
                      child: Image.network(
                          "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tảo xoắn đại việt chất lượng cao",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Trắng", style: TextStyle(color: Colors.black)),
                        Spacer(),
                        Text("x1",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "700.000₫",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.red),
                    ),
                  ],
                )),
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
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
                      child: Image.network(
                          "https://cdn.davichat.info/images/products/2/tao-xoan-davi1617265243302.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tảo xoắn đại việt chất lượng cao",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Trắng", style: TextStyle(color: Colors.black)),
                        Spacer(),
                        Text("x1",
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "700.000₫",
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
              Text("2 sản phẩm", style: TextStyle(color: Colors.black)),
              Spacer(),
              Text("Thành tiền:"),
              Text(
                "700.000₫",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
              ),
            ],
          ),
          SizedBox(height: 5),
          const Divider(
            height: 2,
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.teal,
                    size: 16,
                  ),
                  SizedBox(width: 3),
                  Text("Phương thức thanh toán",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16))
                ],
              ),
              SizedBox(height: 3),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Text(
                  "Thanh toán khi nhận hàng",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          const Divider(
            height: 2,
            thickness: 1,
          ),
          SizedBox(height: 5),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Mã đơn hàng",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "2121312414A2MK",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    "Thời gian đặt hàng",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "04-04-2021 12:22",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    "Thời gian giao hàng cho vận chuyện",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "06-04-2021 12:22",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          const Divider(
            height: 2,
            thickness: 3,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
            child: Center(
                child: Text(
              "Liên hệ shop",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
