import 'package:flutter/material.dart';
import '../../text/textsplash.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        // Image.asset("assets/images/splash_image.png"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    )),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  text1,
                  SizedBox(
                    height: 10,
                  ),
                  text2,
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () => debugPrint(textDebug),
                      child: text3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ])),
    );
  }
}
