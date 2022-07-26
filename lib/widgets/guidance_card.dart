import 'package:findkoss/models/guidance.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
import '../models/guidance.dart';

class guidance_card extends StatelessWidget {
  guidance guidanceModel;
  guidance_card(this.guidanceModel);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          guidanceModel.imageUrl,
          // "assets/images/tips1.png",
          width: 80,
        ),
        BoxW16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              guidanceModel.name,
              // "City Guidelines",
              style: TsBlackMedium.copyWith(fontSize: 18),
            ),
            BoxH4,
            Text(
              "Updated ${guidanceModel.updateAt}",
              style: Ts3.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: color3,
                )))
      ],
    );
  }
}
