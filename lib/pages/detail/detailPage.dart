import 'package:findkoss/models/facility_item.dart';
import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:findkoss/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  lauchUrl(String url) async {
    if (await canLaunch(url)) {
      lauchUrl(url);
    } else {
      throw (url);
    }
  }

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
              SizedBox(
                height: 327.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 604.0,
                decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
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
                            "Kuretakeso Hott",
                            style: TsBlackBold.copyWith(fontSize: 22.0),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              BoxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              BoxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              BoxW4,
                              Image.asset(
                                "assets/images/icon_star.png",
                                width: 20.0,
                              ),
                              BoxW4,
                              Image.asset(
                                "assets/images/icon_star_grey.png",
                                width: 20.0,
                              ),
                              BoxW4,
                            ],
                          )
                        ],
                      ),

                      BoxH4,

                      // NOTE: Price
                      Text.rich(
                        TextSpan(
                            // text: "\$ ${spaceModel.price} ",
                            text: "\$ 52",
                            style: Ts4.copyWith(fontSize: 16),
                            children: [
                              TextSpan(
                                  text: " /mount",
                                  style: Ts3.copyWith(fontSize: 16))
                            ]),
                      ),
                      BoxH30,
                      Text(
                        "Main Facilities",
                        style: TsBlackMedium.copyWith(fontSize: 16.0),
                      ),
                      BoxH12,
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
                      BoxH30,
                      Text("Photos",
                          style: TsBlackMedium.copyWith(fontSize: 16.0)),
                      BoxH12,
                      Container(
                        height: 88,
                        child: ListView(
                          children: [
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110.0,
                              height: 88,
                            ),
                            BoxW4,
                            Image.asset(
                              'assets/images/photo2.png',
                              width: 110.0,
                              height: 88,
                            ),
                            BoxW4,
                            Image.asset(
                              'assets/images/photo3.png',
                              width: 110.0,
                              height: 88,
                            ),
                            BoxW4,
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110.0,
                              height: 88,
                            ),
                          ],
                          scrollDirection: Axis.horizontal,
                        ),
                      ),

                      BoxH30,

                      // NOTE : LOCATION
                      Text(
                        "Location",
                        style: TsBlackMedium.copyWith(fontSize: 16.0),
                      ),
                      BoxH8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jln. Kappan Sukses No. 20\nPalembang",
                            style: Ts3.copyWith(fontSize: 14.0),
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
                      BoxH40,
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            onPressed: () {
                              launchUrlString('tel://+6285211119246');
                            },
                            color: colorPurple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0)),
                            child: Text(
                              "Book Now",
                              style: TsWhiteBold.copyWith(
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