import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar();

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(60),
                ),
                // color: Colors.white,
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/arrow.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(14),
            //   ),
            //   child: Row(
            //     children: [
            //       Text(
            //         "$rating",
            //         style: const TextStyle(
            //           fontSize: 14,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       const SizedBox(width: 5),
            //       SvgPicture.asset("assets/icons/Star Icon.svg"),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.white),
          child: Container(
            height: 48.0,
            alignment: Alignment.center,
            child: TabPageSelector(controller: _tabController),
          ),
        ), 
      ),
    );
  }
}
