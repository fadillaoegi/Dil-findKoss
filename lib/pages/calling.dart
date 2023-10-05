import 'package:dillfindkoss/style/style.dart';
import 'package:dillfindkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class Calling extends StatefulWidget {
  const Calling({Key? key}) : super(key: key);

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/pic.png",
                      width: 150.0,
                      height: 150.0,
                    ),
                    const SizedBox(
                      height: 65.0,
                    ),
                    Text(
                      "Shofa Nabila Alifa",
                      style: tsBlackBold.copyWith(fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "12 : 30 minutess",
                      style: tsBlackMedium.copyWith(fontSize: 16.0),
                    ),
                    boxH30,
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/btn_close.png",
                          width: 50.0,
                          height: 50.0,
                        ))
                  ],
                )
              ],
            )
          ],
        ));
      }),
    );
  }
}
