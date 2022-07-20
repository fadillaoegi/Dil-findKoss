import 'package:findkoss/models/city.dart';
import 'package:flutter/material.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/city_card.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                              1, 'Surabaya', 'assets/images/city2.png', false)),
                          BoxW12,
                          cityCard(City(
                              1, 'Makassar', 'assets/images/city3.png', false)),
                          BoxW12,
                          cityCard(City(
                              1, 'Palembang', 'assets/images/city4.png', true)),
                          BoxW12,
                          cityCard(City(
                              1, 'Tegal', 'assets/images/city5.png', true)),
                          BoxW12,
                          cityCard(City(
                              1, 'Semarang', 'assets/images/city6.png', false)),
                          BoxW12,
                        ],
                      ),
                    ),
                    BoxH30,
                    text5,
                    BoxH16,
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Weeeww"),
                              Text("Sleewbeewwww"),
                              Text("Sleewbeeww"),
                              Text("Sleewbeeww"),
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
