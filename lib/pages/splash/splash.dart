import 'package:flutter/material.dart';
import '../../text/textsplash.dart';
import '../home/home.dart';
import '../../style/style.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

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
            BoxH50,
            Padding(
              padding: EdgeInsets.only(left: 30.0),
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
                  BoxH30,
                  text1,
                  BoxH10,
                  text2,
                  BoxH40,
                  SizedBox(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: text3,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(17)),
                      // color: colorPurple,
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
