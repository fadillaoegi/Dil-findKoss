import 'package:flutter/material.dart';
import '../style/style.dart';

class BottomNavItem extends StatelessWidget {
  // const bottomNavItem({Key? key}) : super(key: key);
  final String imageUrl;
  final bool aktif;

  const BottomNavItem(this.aktif, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(
          // "assets/images/icon_home.png",
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        aktif
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: colorPurple,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(1000))),
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
