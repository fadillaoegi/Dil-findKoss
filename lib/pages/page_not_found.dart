import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/error.png",
                    height: 85.0,
                    width: 300.0,
                  ),
                  boxH62,
                  Text(
                    "Where are you going?",
                    style: tsBlackBold.copyWith(fontSize: 24.0),
                  ),
                  boxH8,
                  Text(
                    "Seems like the page that you were",
                    style: ts3.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    "requested is already gone",
                    style: ts3.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 94.0,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Back To Home",
                      style: tsWhiteBold,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
