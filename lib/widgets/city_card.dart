import 'package:findkoss/models/city.dart';
import 'package:findkoss/style/style.dart';
import 'package:findkoss/style/textstyle.dart';
import 'package:flutter/material.dart';
import '../models/city.dart';

class cityCard extends StatelessWidget {

  // CityModel city;
  // cityCard(this.city);

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
                // city.imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              BoxH24,
              Text(
                "Surabaya",
                // city.name,
                style: Ts1.copyWith(fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
