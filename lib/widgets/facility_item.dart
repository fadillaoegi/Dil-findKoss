import 'package:findkoss/models/facility_item.dart';
import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  // const FacilityItem({Key? key}) : super(key: key);

  ModelFacility modelFacility;

  FacilityItem(this.modelFacility);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          // 'assets/images/icon_kitchen.png',
          modelFacility.urlImage,
          width: 32.0,
        ),
        BoxH8,
        Text.rich(
          TextSpan(
              text: "${modelFacility.jml} ",
              // text: "2",
              style: Ts4.copyWith(fontSize: 16),
              children: [
                TextSpan(
                    text: " ${modelFacility.nama}",
                    style: Ts3.copyWith(fontSize: 16))
              ]),
        ),
      ],
    );
  }
}
