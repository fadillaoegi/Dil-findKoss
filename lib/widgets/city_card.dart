import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';

class cityCard extends StatefulWidget {
  cityCard({Key? key}) : super(key: key);

  @override
  State<cityCard> createState() => _cityCardState();
}

class _cityCardState extends State<cityCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: ClipRRect(
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
      ),
    );
  }
}
