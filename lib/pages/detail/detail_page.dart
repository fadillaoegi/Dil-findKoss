import 'package:findkoss/models/facility_item.dart';
import 'package:findkoss/models/space.dart';
import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:findkoss/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:';

class Detail extends StatelessWidget {
  final Space? space;
  const Detail({Key? key, this.space}) : super(key: key);

  // lauchUrl(String url) async {
  //   if (await canLaunchUrlString(url)) {
  //     lauchUrl(url);
  //   } else {
  //     throw (url);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(children: [
          Image.asset(
            "assets/images/thumbnail.png",
            width: MediaQuery.of(context).size.width,
            height: 350.0,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 327.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 604.0,
                decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 24.0, right: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lippo",
                            style: tsBlackBold.copyWith(fontSize: 22.0),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              boxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              boxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              boxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              boxW4,
                              Image.asset(
                                "assets/images/icon_star_grey.png",
                                width: 20.0,
                              ),
                              boxW4,
                            ],
                          )
                        ],
                      ),

                      boxH4,

                      // NOTE: Price
                      Text.rich(
                        TextSpan(
                            // text: "\$ ${spaceModel.price} ",
                            text: "\$ 52",
                            style: ts4.copyWith(fontSize: 16),
                            children: [
                              TextSpan(
                                  text: " /mount",
                                  style: ts3.copyWith(fontSize: 16))
                            ]),
                      ),
                      boxH30,
                      Text(
                        "Main Facilities",
                        style: tsBlackMedium.copyWith(fontSize: 16.0),
                      ),
                      boxH12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilityItem(ModelFacility(
                              'assets/images/icon_kitchen.png', 'Kitchen', 2)),
                          FacilityItem(ModelFacility(
                              'assets/images/icon_bedroom.png', 'Badroom', 3)),
                          FacilityItem(ModelFacility(
                              "assets/images/icon_cupboard.png",
                              "Bag Lemari",
                              3))
                        ],
                      ),
                      boxH30,
                      Text("Photos",
                          style: tsBlackMedium.copyWith(fontSize: 16.0)),
                      boxH12,
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110.0,
                              height: 88,
                            ),
                            boxW4,
                            Image.asset(
                              'assets/images/photo2.png',
                              width: 110.0,
                              height: 88,
                            ),
                            boxW4,
                            Image.asset(
                              'assets/images/photo3.png',
                              width: 110.0,
                              height: 88,
                            ),
                            boxW4,
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110.0,
                              height: 88,
                            ),
                          ],
                        ),
                      ),

                      boxH30,

                      // NOTE : LOCATION
                      Text(
                        "Location",
                        style: tsBlackMedium.copyWith(fontSize: 16.0),
                      ),
                      boxH8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jln. Kappan Sukses No. 20\nPalembang",
                            style: ts3.copyWith(fontSize: 14.0),
                          ),
                          InkWell(
                            onTap: (() {
                              // launchUrl(
                              //   'https://goo.gl/maps/9TjHRcRfDtCkUiLSA');
                              launchUrlString(
                                  'https://goo.gl/maps/9TjHRcRfDtCkUiLSA');
                            }),
                            child: Image.asset(
                              "assets/images/btn_map.png",
                              width: 40.0,
                            ),
                          )
                        ],
                      ),
                      boxH40,
                      SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              launchUrlString('tel://+6285211119246');
                            },
                            child: Text(
                              "Book Now",
                              style: tsWhiteBold.copyWith(
                                fontSize: 18.0,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Image.asset(
                    "assets/images/btn_back.png",
                    width: 40.0,
                  ),
                ),
                Image.asset(
                  "assets/images/btn_wishlist.png",
                  width: 40.0,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
