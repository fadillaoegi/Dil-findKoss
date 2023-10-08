import 'package:dillfindkoss/models/city.dart';
import 'package:dillfindkoss/models/guidance.dart';
import 'package:dillfindkoss/models/space.dart';
import 'package:dillfindkoss/providers/space_provider.dart';
import 'package:dillfindkoss/style/textstyle.dart';
import 'package:dillfindkoss/widgets/city_card.dart';
import 'package:dillfindkoss/widgets/rekomend_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/guidance_card.dart';
import '../../widgets/bottom_nav.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    // spaceProvider.getApi();
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
                          // CityCard(City(
                          //     1, 'Kendari', 'assets/images/city1.png', true)),
                          CityCard(City(
                              id: "1",
                              name: 'Kendari',
                              imageUrl: 'assets/images/city1.png',
                              popular: true)),
                          boxW12,
                          CityCard(City(
                              id: "2",
                              name: 'Surabaya',
                              imageUrl: 'assets/images/city2.png',
                              popular: false)),
                          // CityCard(City(
                          //     2, 'Surabaya', 'assets/images/city2.png', false)),
                          boxW12,
                          CityCard(City(
                              id: "3",
                              name: 'Makassar',
                              imageUrl: 'assets/images/city3.png',
                              popular: false)),
                          // CityCard(City(
                          //     3, 'Makasar', 'assets/images/city3.png', false)),
                          boxW12,
                          CityCard(City(
                              id: "4",
                              name: 'Surabaya',
                              imageUrl: 'assets/images/city4.png',
                              popular: true)),
                          // CityCard(City(
                          //     4, 'Palembang', 'assets/images/city4.png', true)),
                          boxW12,
                          CityCard(City(
                              id: "5",
                              name: 'Surabaya',
                              imageUrl: 'assets/images/city5.png',
                              popular: true)),
                          // CityCard(City(
                          //     5, 'Tegal', 'assets/images/city5.png', true)),
                          boxW12,
                          // CityCard(City(6, 'Semaraaang',
                          //     'assets/images/city6.png', false)),
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
                      width: double.infinity,
                      child: FutureBuilder<List<Space>>(
                        future: spaceProvider.getApi(),
                        builder: (context, snapshot) {
                          // ignore: avoid_print
                          // print(snapshot);
                          if (snapshot.hasData) {
                            return ListView(
                              scrollDirection: Axis.vertical,
                              children: snapshot.data!
                                  .map((item) => Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Rekomend(item)))
                                  .toList(),
                              // const [],
                            );
                          } else {
                            return Center(
                              child: Column(
                                children: [
                                  const CircularProgressIndicator(),
                                  Text(
                                      "Data Tidak Terdeteksi: ${snapshot.connectionState}")
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    boxH30,
                    // NOTE: Tips & Guidance
                    text4,
                    boxH20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GuidanceCard(Guidance(
                            id: "1",
                            name: 'City Guidelines',
                            imageUrl: 'assets/images/tips1.png',
                            updateAt: '20 Apr')),
                        boxH30,
                        GuidanceCard(Guidance(
                            id: "2",
                            name: 'Jakarta Fairship',
                            imageUrl: 'assets/images/tips2.png',
                            updateAt: '11 Dec')),
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
