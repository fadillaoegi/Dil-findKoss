import 'package:findkoss/models/guidance.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

class GuidanceCard extends StatelessWidget {
  Guidance GuidanceModel;
  GuidanceCard(this.GuidanceModel);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          GuidanceModel.imageUrl,
          // "assets/images/tips1.png",
          width: 80,
        ),
        BoxW16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              GuidanceModel.name,
              // "City Guidelines",
              style: TsBlackMedium.copyWith(fontSize: 18),
            ),
            BoxH4,
            Text(
              "Updated ${GuidanceModel.updateAt}",
              style: Ts3.copyWith(fontSize: 14),
            )
          ],
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: colorGrey,
                )))
      ],
    );
  }
}
