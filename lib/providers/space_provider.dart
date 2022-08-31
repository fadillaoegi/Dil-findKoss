import 'dart:convert';

import 'package:findkoss/api/api_config.dart';
import 'package:findkoss/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getApiRecomendedSpace() async {
    var result = await http.get(
      Uri.parse(
        ApiConfig.baseUrl,
      ),
    );

    // print(result.statusCode);
    // print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);

      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();

      return spaces;
    } else {
      return <Space>[];
    }
  }
}
