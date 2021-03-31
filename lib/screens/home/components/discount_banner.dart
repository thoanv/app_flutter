import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_app/constants.dart';

class DiscountBanner extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  final List<String> items = [
    'assets/images/Image Banner 2.png',
    'assets/images/Image Banner 2.png',
  ];

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(height: 140.0),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Image.asset(
                        i,
                        fit: BoxFit.cover,
                        ),
                    ],
                    ),
                  )
                );
              },
            );
          }).toList(),
        )
      ]);
}
