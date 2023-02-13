import 'package:findkoss/models/city.dart';
import 'package:findkoss/models/guidance.dart';
import 'package:findkoss/models/space.dart';
import 'package:findkoss/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/city_card.dart';
import '../../widgets/rekomend_card.dart';
import '../../widgets/guidance_card.dart';
import '../../widgets/bottomNavItem.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                    text1,
                    BoxH2,
                    text2,
                    BoxH30,
                    // NOTE: Popular City
                    text3,
                    BoxH16,
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cityCard(City(
                              1, 'Kendari', 'assets/images/city1.png', true)),
                          BoxW12,
                          cityCard(City(
                              2, 'Surabaya', 'assets/images/city2.png', false)),
                          BoxW12,
                          cityCard(City(
                              3, 'Makassar', 'assets/images/city3.png', false)),
                          BoxW12,
                          cityCard(City(
                              4, 'Palembang', 'assets/images/city4.png', true)),
                          BoxW12,
                          cityCard(City(
                              5, 'Tegaal', 'assets/images/city5.png', true)),
                          BoxW12,
                          cityCard(City(6, 'Semaraang',
                              'assets/images/city6.png', false)),
                        ],
                      ),
                    ),
                    BoxH30,
                    // NOTE Recommended Space
                    text5,
                    BoxH16,
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
                                int index = 0;
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // data.map((e) => rekomend(Space(e))).toList(),
                                    rekomend(Space(
                                        id: 1,
                                        name: 'Lippoo',
                                        imageUrl: 'assets/images/space1.png',
                                        price: 56,
                                        city: 'Surabaya',
                                        country: 'Jawa Timuur',
                                        rating: 45)),
                                    BoxH30,
                                    rekomend(Space(
                                        id: 2,
                                        name: 'Morini',
                                        imageUrl: 'assets/images/space2.png',
                                        price: 58,
                                        city: 'Kendari',
                                        country: 'Sulawesi Tenggara',
                                        rating: 45)),
                                    BoxH30,
                                    rekomend(Space(
                                        id: 3,
                                        name: 'Momaka',
                                        imageUrl: 'assets/images/space3.png',
                                        price: 46,
                                        city: 'Jakarta Selatan',
                                        country: 'Jawa Barat',
                                        rating: 45)),
                                    BoxH30,
                                    rekomend(Space(
                                        id: 3,
                                        name: 'Merdeka',
                                        imageUrl: 'assets/images/space1.png',
                                        price: 33,
                                        city: 'Tegal',
                                        country: 'Jawa tengah',
                                        rating: 45)),
                                  ],
                                );
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
                    BoxH30,
                    // NOTE: Tips & Guidance
                    text4,
                    BoxH20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        guidance_card(guidance(1, 'City Guidelines',
                            'assets/images/tips1.png', '20 Apr')),
                        BoxH30,
                        guidance_card(guidance(2, 'Jakarta Fairship',
                            'assets/images/tips2.png', '11 Dec')),
                        BoxH30,
                      ],
                    )
                  ],
                ),
              ),
              BoxH50,
              BoxH20
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        margin: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
            color: colorWhite, borderRadius: BorderRadius.circular(30)),
        child: Row(
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
