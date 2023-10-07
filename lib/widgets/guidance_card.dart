import 'package:dillfindkoss/models/guidance.dart';
import 'package:dillfindkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

// ignore: must_be_immutable
class GuidanceCard extends StatelessWidget {
  Guidance guidanceModel;
  GuidanceCard(this.guidanceModel, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            guidanceModel.imageUrl,
            // "assets/images/tips1.png",
            width: 80,
          ),
          boxW16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                guidanceModel.name,
                // "City Guidelines",
                style: tsBlackMedium.copyWith(fontSize: 18),
              ),
              boxH4,
              Text(
                "Updated ${guidanceModel.updateAt}",
                style: ts3.copyWith(fontSize: 14),
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
      ),
    );
  }
}
