import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  var p1 = ["A0", "A1", "A2", "A3"];
  List<Widget> widgetlist = List();

  MapPageState() {
    getWidgets(widgetlist);
  }

  @override
  Widget build(BuildContext context) {
    double scwidth = MediaQuery.of(context).size.width;
    double scheight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          height: scheight - kToolbarHeight - 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.wallpaperscraft.com/image/parking_cars_underground_131454_240x320.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: widgetlist.map((element) {
              return element;
            }).toList(),
          ),
        )
      ],
    );
  }
  void getWidgets(List<Widget> wlist) {
    for (int i = 0; i < p1.length-1; i++) {
      wlist.add(Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20.0)),
            child: FlatButton(
              child: Text(
                p1[i].toString(),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => print('hii1'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20.0)),
            child: FlatButton(
              child: Text(
                p1[i + 1].toString(),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => print('hii2'),
            ),
          )
        ],
      ));
    }
  }
}
