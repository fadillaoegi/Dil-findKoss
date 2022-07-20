import 'package:findkoss/models/city.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
import '../style/textstyle.dart';

class cityCard extends StatelessWidget {
  // const cityCard({Key? key}) : super(key: key);

  City city;
  cityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 150,
          width: 120,
          color: color4,
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
              ),
              BoxH24,
              Text(
                city.name,
                // city.name,
                style: Ts1.copyWith(fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
