import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  NotFound({Key? key}) : super(key: key);

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
                  BoxH62,
                  Text(
                    "Where are you going?",
                    style: TsBlackBold.copyWith(fontSize: 24.0),
                  ),
                  BoxH8,
                  Text(
                    "Seems like the page that you were",
                    style: Ts3.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    "requested is already gone",
                    style: Ts3.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 94.0,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Back To Home",
                      style: TsWhiteBold,
                    ),
                    onPressed: () {},
                    // color: colorPurple,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(12)),
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
