import 'package:findkoss/models/city.dart';
import 'package:findkoss/models/space.dart';
import 'package:flutter/material.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/city_card.dart';
import '../../widgets/rekomend_card.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.0, left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text1,
                    BoxH2,
                    text2,
                    BoxH30,
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
                              5, 'Tegal', 'assets/images/city5.png', true)),
                          BoxW12,
                          cityCard(City(
                              6, 'Semarang', 'assets/images/city6.png', false)),
                        ],
                      ),
                    ),
                    BoxH30,
                    text5,
                    BoxH16,
                    Container(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              rekomend(Space(
                                  1,
                                  'Lippo',
                                  'assets/images/space1.png',
                                  56,
                                  'Surabaya',
                                  'Jawa Timur',
                                  4.5)),
                              BoxH30,
                              rekomend(Space(
                                  2,
                                  'Morini',
                                  'assets/images/space2.png',
                                  58,
                                  'Kendari',
                                  'Sulawesi Tenggara',
                                  4.5)),
                              BoxH30,
                              rekomend(Space(
                                  3,
                                  'Momaka',
                                  'assets/images/space3.png',
                                  46,
                                  'Tegal',
                                  'Jawa Tengah',
                                  4.5)),
                              BoxH30,
                              rekomend(Space(
                                  4,
                                  'Merdeka',
                                  'assets/images/space1.png',
                                  33,
                                  'Jakarta Selatan',
                                  'Jawa Barat',
                                  4.5)),
                              BoxH30,
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
