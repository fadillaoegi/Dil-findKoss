import 'package:findkoss/models/city.dart';
import 'package:findkoss/models/guidance.dart';
import 'package:findkoss/models/space.dart';
import 'package:findkoss/providers/space_provider.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/city_card.dart';
import '../../widgets/guidance_card.dart';
import '../../widgets/bottom_nav.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Space? spaceModel;
  Home({Key? key, this.spaceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore Now",
                      style: tsBlackBold.copyWith(fontSize: 24.0),
                    ),
                    boxH2,
                    Text(
                      "Mencari kosan yang FindKosss",
                      style: ts3.copyWith(fontSize: 16.0),
                    ),
                    boxH30,

                    // NOTE: POPULAR CITY
                    Text(
                      "Popular Cities",
                      style: tsBlackMedium.copyWith(fontSize: 16),
                    ),
                    boxH16,
                    Container(
                      margin: const EdgeInsets.all(0),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CityCard(City(
                              1, 'Kendari', 'assets/images/city1.png', true)),
                          boxW12,
                          CityCard(City(
                              2, 'Surabaya', 'assets/images/city2.png', false)),
                          boxW12,
                          CityCard(City(
                              3, 'Makasar', 'assets/images/city3.png', false)),
                          boxW12,
                          CityCard(City(
                              4, 'Palembang', 'assets/images/city4.png', true)),
                          boxW12,
                          CityCard(City(
                              5, 'Tegal', 'assets/images/city5.png', true)),
                          boxW12,
                          CityCard(City(6, 'Semaraaang',
                              'assets/images/city6.png', false)),
                        ],
                      ),
                    ),
                    boxH30,

                    // NOTE Recommended Space
                    Text(
                      "Recommended Space",
                      style: tsBlackMedium.copyWith(fontSize: 16),
                    ),
                    boxH16,
                    SizedBox(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          FutureBuilder(
                            future: spaceProvider.getApiRecomendedSpace(),
                            builder: ((context, snapshot) {
                              if (snapshot.hasData) {
                                // List<Space> data = snapshot.data;
                                // int index = 0;
                                return const Center(
                                    child: CircularProgressIndicator());
                                // data.map((e) => Rekomend(Space())).toList();
                                // return Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //     Rekomend(Space(
                                //         id: 1,
                                //         name: 'Lippoo',
                                //         imageUrl: 'assets/images/space1.png',
                                //         price: 56,
                                //         city: 'Surabaya',
                                //         country: 'Jawa Timuur',
                                //         rating: 45)),
                                //     boxH30,
                                //     Rekomend(Space(
                                //         id: 2,
                                //         name: 'Morini',
                                //         imageUrl: 'assets/images/space2.png',
                                //         price: 58,
                                //         city: 'Kendari',
                                //         country: 'Sulawesi Tenggara',
                                //         rating: 45)),
                                //     boxH30,
                                //     Rekomend(Space(
                                //         id: 3,
                                //         name: 'Momaka',
                                //         imageUrl: 'assets/images/space3.png',
                                //         price: 46,
                                //         city: 'Jakarta Selatan',
                                //         country: 'Jawa Barat',
                                //         rating: 45)),
                                //     boxH30,
                                //     Rekomend(Space(
                                //         id: 3,
                                //         name: 'Merdeka',
                                //         imageUrl: 'assets/images/space1.png',
                                //         price: 33,
                                //         city: 'Tegal',
                                //         country: 'Jawa tengah',
                                //         rating: 45)),
                                //   ],
                                // );
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                          ),
                        ],
                      ),
                    ),
                    boxH30,
                    // NOTE: Tips & Guidance
                    text4,
                    boxH20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GuidanceCard(Guidance(1, 'City Guidelines',
                            'assets/images/tips1.png', '20 Apr')),
                        boxH30,
                        GuidanceCard(Guidance(2, 'Jakarta Fairship',
                            'assets/images/tips2.png', '11 Dec')),
                        boxH30,
                      ],
                    )
                  ],
                ),
              ),
              boxH50,
              boxH20
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        margin: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
            color: colorWhite, borderRadius: BorderRadius.circular(30)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(true, 'assets/images/icon_home.png'),
            BottomNavItem(false, 'assets/images/icon_email.png'),
            BottomNavItem(false, 'assets/images/icon_card.png'),
            BottomNavItem(false, 'assets/images/icon_love.png'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
