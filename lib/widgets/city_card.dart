import 'package:findkoss/models/city.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
import '../style/textstyle.dart';

// ignore: must_be_immutable
class CityCard extends StatelessWidget {
  // const cityCard({Key? key}) : super(key: key);

  City city;
  CityCard(this.city, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 150,
          width: 120,
          color: colorWhite,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imageUrl,
                    width: 120,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                  city.popular
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: colorPurple,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                                child: Image.asset(
                              "assets/images/icon_star.png",
                              width: 22,
                              height: 22,
                            )),
                          ),
                        )
                      : Container()
                ],
              ),
              boxH24,
              Text(
                city.name,
                // city.name,
                style: tsBlackBold.copyWith(fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
