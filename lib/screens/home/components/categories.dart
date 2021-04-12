import 'package:flutter/material.dart';
import 'package:shop_app/models/Category.dart';
import 'package:shop_app/screens/filter/filter_screen.dart';
import 'package:http/http.dart' as http;
import '../../../size_config.dart';
import 'section_title.dart';

class Categories extends StatefulWidget {
  @override
  _CategoryState createState() => new _CategoryState();
}

class _CategoryState extends State<Categories> {
  var queryParameters = {
    'parent': 'true',
  };

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
        FutureBuilder(
            future:
                fetchCategories(http.Client(), 'categories', queryParameters),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print(snapshot.error);
              }
              return snapshot.hasData
                  ? ListCategories(categories: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            }),
      ],
    );
  }
}

class ListCategories extends StatelessWidget {
  final List<Category> categories;

  const ListCategories({
    Key key,
    this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(categories);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var cate in categories)
            SpecialOfferCard(
              image: "${cate.avatar}",
              name: "${cate.name}",
              numOfBrands: 18,
              press: () => Navigator.pushNamed(context, FilterScreen.routeName),
            ),
          SizedBox(width: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.name,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String name, image;
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
                          text: "$name\n",
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
