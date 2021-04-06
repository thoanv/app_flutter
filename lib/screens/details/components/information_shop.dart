import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class InformationShop extends StatelessWidget {
  const InformationShop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
        child: Column(
          children: [
            Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcvC7bWdPin5eXjghRvYjjhf1hjrRIOtzmA&usqp=CAU",
                      height: 70.0,
                      width: 70.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          "Nguyễn Văn Thỏa",
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)
                      ),
                      Text(' Tp. Hà Nội', style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  ),
                  Spacer(),
                  OutlinedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.remove_red_eye_outlined, size: 18),
                    label: Text("Xem shop", style: TextStyle(color: Colors.black, fontSize: 14)),
                  )
                ],
            ),
          ],
        ),
    );
  }
}
