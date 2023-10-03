import 'package:flutter/material.dart';
import '../../text/textsplash.dart';
import '../home/home.dart';
import '../../style/style.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset("assets/images/splash_image.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boxH50,
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    )),
                  ),
                  boxH30,
                  text1,
                  boxH10,
                  text2,
                  boxH40,
                  SizedBox(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: text3,
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
