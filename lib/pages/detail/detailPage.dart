import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

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
                          Text("Kuretakeso Hott"),
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
                                "assets/images/icon_star.png",
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
                      Text("Main Facilities"),
                      BoxH12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon_kitchen.png',
                                width: 32.0,
                              ),
                              BoxH8,
                              Text.rich(
                                TextSpan(
                                    // text: "\$ ${spaceModel.price} ",
                                    text: "2",
                                    style: Ts4.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: " Kitchen",
                                          style: Ts3.copyWith(fontSize: 16))
                                    ]),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon_bedroom.png',
                                width: 32.0,
                              ),
                              BoxH8,
                              Text.rich(
                                TextSpan(
                                    // text: "\$ ${spaceModel.price} ",
                                    text: "3",
                                    style: Ts4.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: " Badroom",
                                          style: Ts3.copyWith(fontSize: 16))
                                    ]),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon_cupboard.png',
                                width: 32.0,
                              ),
                              BoxH8,
                              Text.rich(
                                TextSpan(
                                    // text: "\$ ${spaceModel.price} ",
                                    text: "3",
                                    style: Ts4.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: " Bog Lemari",
                                          style: Ts3.copyWith(fontSize: 16))
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      BoxH30,
                      Text("Photos"),
                      BoxH12,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/photo1.png',
                            width: 110.0,
                            height: 88,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
