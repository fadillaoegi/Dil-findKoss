import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

class rekomend extends StatelessWidget {
  const rekomend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 110,
            width: 130,
            child: Stack(children: [
              Image.asset(
                "assets/images/space1.png",
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 30,
                    width: 70,
                    child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Image.asset(
                            "assets/images/icon_star.png",
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            "4/5",
                            style: TsWhiteMedium.copyWith(fontSize: 13),
                          )
                        ])),
                    decoration: BoxDecoration(
                        color: color1,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ))),
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kuretakeso Hott",
                style: TsBlackMedium.copyWith(fontSize: 18),
              ),
              BoxH2,
              Text.rich(
                TextSpan(
                    text: "\$52 ",
                    style: Ts4.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                          text: " /mount", style: Ts3.copyWith(fontSize: 16))
                    ]),
              ),
              BoxH16,
              Text(
                "Bandung, Germany",
                style: Ts3.copyWith(fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
