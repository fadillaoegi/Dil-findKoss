import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class city extends StatefulWidget {
  city({Key? key}) : super(key: key);

  @override
  State<city> createState() => _cityState();
}

class _cityState extends State<city> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 150,
        width: 120,
        color: color4,
        child: Column(
          children: [
            Image.asset(
              'assets/images/city1.png',
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            BoxH24,
            Text(
              "Surabaya",
              style: Ts1.copyWith(fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}
