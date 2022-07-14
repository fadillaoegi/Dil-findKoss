import 'package:flutter/material.dart';
import '../../style/style.dart';
import '../../text/texthome.dart';
import '../../widgets/city_card.dart';
import '../../models/city.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                          cityCard(),
                          BoxW12,
                        ],
                      ),
                    ),
                    BoxH20,
                    Text("Tstisvsv")
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
