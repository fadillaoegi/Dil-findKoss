import 'package:findkoss/models/space.dart';
import 'package:findkoss/pages/detail/detailPage.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
import '../models/space.dart';

class rekomend extends StatelessWidget {
  // const rekomend({Key? key}) : super(key: key);
  final Space spaceModel;
  rekomend(this.spaceModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 110,
              width: 130,
              child: Stack(children: [
                Image.asset(
                  spaceModel.imageUrl!,
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
                              spaceModel.rating.toString(),
                              style: TsWhiteMedium.copyWith(fontSize: 13),
                            )
                          ])),
                      decoration: BoxDecoration(
                          color: colorPurple,
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
                  spaceModel.name!,
                  style: TsBlackMedium.copyWith(fontSize: 18),
                ),
                BoxH2,
                Text.rich(
                  TextSpan(
                      text: "\$ ${spaceModel.price} ",
                      style: Ts4.copyWith(fontSize: 16),
                      children: [
                        TextSpan(
                            text: " /mount", style: Ts3.copyWith(fontSize: 16))
                      ]),
                ),
                BoxH16,
                Text(
                  "${spaceModel.city}, ${spaceModel.country}",
                  style: Ts3.copyWith(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
