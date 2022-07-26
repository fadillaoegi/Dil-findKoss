import 'package:flutter/material.dart';

class bottomNavItem extends StatelessWidget {
  const bottomNavItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/icon_home.png",
          width: 26,
        )
      ],
    );
  }
}
