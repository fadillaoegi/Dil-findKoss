// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
    String id;
    String name;
    String imageUrl;
    bool popular;

    City({
        required this.id,
        required this.name,
        required this.imageUrl,
        required this.popular,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        popular: json["popular"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "popular": popular,
    };
}
