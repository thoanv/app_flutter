import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../../constants.dart';
import '../../../enums.dart';

class CustomBottomDetail extends StatelessWidget {
  const CustomBottomDetail({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  print("Thêm vào giỏ hàng");
                },
                child: Container(
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/icons/cart-white.svg',
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ]),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  print("Mua ngay");
                },
                child: Container(
                  color: Colors.red,
                  height: 60,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      //Center Row contents horizontally,
                      children: <Widget>[
                        Text("Mua ngay",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
