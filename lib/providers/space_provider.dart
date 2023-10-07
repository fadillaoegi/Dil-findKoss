import 'dart:convert';
import 'package:dillfindkoss/api/api_config.dart';
import 'package:dillfindkoss/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future<List<Space>> getApiRecomendedSpace() async {
    try {
      var result = await http.get(
        Uri.parse(
          ApiConfig.baseUrl,
        ),
      );

// Testing APi
      // print(result.statusCode);
      // print(result.body);

      if (result.statusCode == 200) {
        List<Space> dataApiSpaces = [];

        List parseData = jsonDecode(result.body);

        for (var data in parseData) {
          dataApiSpaces.add(Space.fromJson(data));
        }

        return dataApiSpaces;
      } else {
        return [];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return [];
    }
  }
}
