import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/home/home_screen.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Bạn muốn gì là có", "image": "assets/images/logo.png"},
    // {
    //   "text":
    //       "Chúng tôi giúp mọi người kết nối với cửa hàng\ trên khắp Việt Nam",
    //   "image": "assets/images/splash_2.png"
    // },
    // {
    //   "text":
    //       "Chúng tôi chỉ cho bạn cách dễ dàng để mua sắm. \nChỉ cần ở nhà với chúng tôi",
    //   "image": "assets/images/splash_3.png"
    // },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    // DefaultButton(
                    //   text: "Tiếp tục",
                    //   press: () {
                    //     Navigator.pushNamed(context, HomeScreen.routeName);
                    //   },
                    // ),
                    // Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  startTime() async {
    var duration = new Duration(seconds: 1);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => HomeScreen()
    )
    );
  }
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
