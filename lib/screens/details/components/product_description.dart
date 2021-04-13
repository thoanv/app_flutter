import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  final Product product;
  var maxLine = 3;

  ProductDescription({Key key, this.product}) : super(key: key);

  @override
  _ProductDescriptionState createState() => new _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  // final GestureTapCallback pressOnSeeMore;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2),
          child: Text(
            'Chi tiết sản phẩm',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Xuất sứ : ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    '${widget.product.origin['name']}',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              Padding(padding:EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2)),
              Row(
                children: [
                  Text(
                    'Gửi từ : ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    '${widget.product.booth['district']['name']}, ${widget.product.booth['province']['name']}',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),

        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5, color: Colors.black),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding / 5),
                  ),
                  widget.maxLine > 0
                      ? Text(
                    widget.product.description,
                    maxLines: widget.maxLine,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                      : Text(widget.product.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: kDefaultPadding / 2),
                child: GestureDetector(
                  onTap: () =>
                  {
                    if (widget.maxLine > 0)
                      setState(() => {widget.maxLine = 0})
                    else
                      setState(() => {widget.maxLine = 3})
                  },
                  child: Column(

                    children: [
                      if(widget.maxLine > 0)
                        new MoreIcon(title: "Xem thêm",
                          icon: "assets/icons/more-down.svg",)
                      else
                        new MoreIcon(
                          title: "Thu gọn", icon: "assets/icons/more-up.svg",)
                    ],
                  ),
                ),
              ),

            )
          ],
        )
      ],
    );
  }
}

class MoreIcon extends StatelessWidget {
  final String title;
  final String icon;

  const MoreIcon({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.red, fontSize: 14),
        ),
        SvgPicture.asset(
          icon,
          height: 10,
        )
      ],
    );
  }
}
