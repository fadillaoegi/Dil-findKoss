import 'package:findkoss/api/api_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getApiRecomendedSpace() async {
    var result = await http.get(
      Uri.parse(
        ApiConfig.baseUrl,
      ),
    );

    print(result.statusCode);
    print(result.body);
  }
}
