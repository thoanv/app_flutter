import 'package:flutter/material.dart';
import 'package:shop_app/screens/filter/filter_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Danh mục",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16164927731.png",
                category: "Điện thoại & phụ kiện",
                numOfBrands: 18,
                press: () =>
                    Navigator.pushNamed(context, FilterScreen.routeName),
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604362.png",
                category: "Mẹ và bé",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604572.png",
                category: "Nhà cửa & đời sống",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604702.png",
                category: "Thời trang nữ",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604702.png",
                category: "Thời trang nữ",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604702.png",
                category: "Thời trang nữ",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "https://cdn.davichat.info/categories/16165604702.png",
                category: "Thời trang nữ",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(100),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.2),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: RichText(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
