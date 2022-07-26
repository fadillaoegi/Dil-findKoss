import 'package:flutter/material.dart';
import '../style/style.dart';

class bottomNavItem extends StatelessWidget {
  // const bottomNavItem({Key? key}) : super(key: key);
  final String imageUrl;
  final bool aktif;

  bottomNavItem(this.aktif, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset(
          // "assets/images/icon_home.png",
          imageUrl,
          width: 26,
        ),
        Spacer(),
        aktif
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: color1,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container()
        // Image.asset(
        //   "assets/images/icon_email.png",
        //   width: 26,
        // ),
        // Image.asset(
        //   "assets/images/icon_love.png",
        //   width: 26,
        // ),
      ],
    );
  }
}
