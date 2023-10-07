// To parse this JSON data, do
//
//     final guidance = guidanceFromJson(jsonString);

import 'dart:convert';

Guidance guidanceFromJson(String str) => Guidance.fromJson(json.decode(str));

String guidanceToJson(Guidance data) => json.encode(data.toJson());

class Guidance {
    String id;
    String name;
    String imageUrl;
    String updateAt;

    Guidance({
        required this.id,
        required this.name,
        required this.imageUrl,
        required this.updateAt,
    });

    factory Guidance.fromJson(Map<String, dynamic> json) => Guidance(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        updateAt: json["updateAt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "updateAt": updateAt,
    };
}
