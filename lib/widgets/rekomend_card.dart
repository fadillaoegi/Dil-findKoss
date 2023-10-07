import 'package:dillfindkoss/models/space.dart';
import 'package:dillfindkoss/pages/detail/detail_page.dart';
import 'package:dillfindkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
// import '../models/space.dart';

class Rekomend extends StatelessWidget {
  final Space spaceModel;
  // String? imageUrl;
  const Rekomend(this.spaceModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // NOTE: DATA STATIS
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Detail()));
        // NOTE:  DATA MODEL
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => Detail(spaceModel)));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              height: 110,
              width: 130,
              child: Stack(children: [
                // NOTE: FOR API
                //  Image.network(
                //   spaceModel.imageUrl!,
                // ),

                // NOTE: FOR LOCAL
                Image.asset(
                  spaceModel.imageUrl!,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: colorPurple,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          // NOTE: FOR LOCAL
                          Image.asset(
                            spaceModel.imageUrl!,
                            width: 22,
                            height: 22,
                          ),

                          // NOTE: FOR API
                          // Image.network(
                          //   spaceModel.imageUrl!,
                          //   width: 22,
                          //   height: 22,
                          // ),
                          Text(
                            spaceModel.rating.toString(),
                            style: tsWhiteMedium.copyWith(fontSize: 13),
                          )
                        ])),
                  ),
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
                  style: tsBlackMedium.copyWith(fontSize: 18),
                ),
                boxH2,
                Text.rich(
                  TextSpan(
                      text: "\$ ${spaceModel.price} ",
                      style: ts4.copyWith(fontSize: 16),
                      children: [
                        TextSpan(
                            text: " /mount", style: ts3.copyWith(fontSize: 16))
                      ]),
                ),
                boxH16,
                Text(
                  "${spaceModel.city}, ${spaceModel.country}",
                  style: ts3.copyWith(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
