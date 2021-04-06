
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/color_dots.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../../size_config.dart';
import 'box_attribute.dart';

class CustomBottomDetail extends StatelessWidget {
  const CustomBottomDetail({
    Key key,
    @required this.selectedMenu,
    @required this.product,
  }) : super(key: key);

  final Product product;
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
                onTap: () => _showClassifyProduct(context, false),
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
                onTap: () => _showClassifyProduct(context, true),
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
  void _showClassifyProduct(context, check){
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: kDefaultPadding/2, left:kDefaultPadding/2,),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          UnicornOutlineButton(
                            strokeWidth: 4,
                            radius: 0,
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.yellow],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            child: Image.network(product.images[0],  width: 100,
                                height: 100,
                                fit:BoxFit.cover ),
                            onPressed: () {},
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("${NumberFormat.currency(locale: 'vi', symbol: '₫').format(product.price)}", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18)),
                                  Text("(${NumberFormat.currency(locale: 'vi', symbol: '₫').format(product.price)})", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16, decoration: TextDecoration.lineThrough),),
                                ],
                              ),
                              Text("10 Sản phẩm có sẵn", style:TextStyle(color: Colors.black, fontSize: 14)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black26),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  kDefaultPadding / 5),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text("Màu sắc", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      children: <Widget>[
                        for(var item in product.images)
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.black26
                              ),
                            ),
                            onPressed: () { },
                            child: Text('Xanh'),
                          )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black26),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  kDefaultPadding / 5),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text("Size", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      children: <Widget>[
                        for(var item in product.images)
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.black26
                              ),
                            ),
                            onPressed: () { },
                            child: Text('Xanh'),
                          )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black26),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:  kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text("Số lượng", style:TextStyle(color: Colors.black, fontSize: 16)),
                      Spacer(),
                      Text("Số lượng", style:TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black26),
                    ),
                  ),
                ),
                check ?
                Container(
                    padding: EdgeInsets.only(top:  kDefaultPadding/2),
                    child: RaisedButton(
                      elevation: 2,
                      focusElevation: 4,
                      hoverElevation: 4,
                      highlightElevation: 8,
                      disabledElevation: 0,
                      onPressed: () { },
                      child: Text('Mua hàng'),
                    )

                ):
                Container(
                    padding: EdgeInsets.only(top:  kDefaultPadding/2),
                    child: RaisedButton(
                      elevation: 2,
                      focusElevation: 4,
                      hoverElevation: 4,
                      highlightElevation: 8,
                      disabledElevation: 0,
                      onPressed: () { },
                      child: Text('Thêm vào giỏ hàng'),
                    )

                )
              ],

            ),
        );
      },
    );
  }
}
// ElevatedButton(
//   child: const Text('Close BottomSheet'),
//   onPressed: () => Navigator.pop(context),
// )
class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
    @required VoidCallback onPressed,
  })  : this._painter = _GradientPainter(strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._callback = onPressed,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: BoxConstraints(minWidth: 120, minHeight: 120),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter({@required double strokeWidth, @required double radius, @required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth - 1.5, strokeWidth-1.5, size.width - strokeWidth * 1.5, size.height - strokeWidth * 1.5);
    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}