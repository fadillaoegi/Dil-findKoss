import 'package:flutter/material.dart';
import '../style/style.dart';

class rekomend extends StatelessWidget {
  const rekomend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          child: Image.asset("assets/images/space1.png"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
              height: 30,
              width: 50,
              child: Center(
                  child: Image.asset(
                "assets/images/icon_star.png",
                width: 22,
                height: 22,
              )),
              decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ))),
        )
      ],
    );
  }
}
