import 'dart:convert';

Space spaceFromJson(String str) => Space.fromJson(json.decode(str));

String spaceToJson(Space data) => json.encode(data.toJson());

class Space {
  int? id;
  int? price;
  String? imageUrl;
  String? name;
  String? country;
  double? rating;
  String? city;
  Space({
    this.id,
    this.price,
    this.imageUrl,
    this.name,
    this.country,
    this.rating,
    this.city,
  });

  factory Space.fromJson(Map<String, dynamic> json) => Space(
        id: json["id"],
        price: json["price"],
        imageUrl: json["imageUrl"],
        name: json["name"],
        country: json["country"],
        rating: json["rating"].toDouble(),
        city: json["city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "imageUrl": imageUrl,
        "name": name,
        "country": country,
        "rating": rating,
        "city": city,
      };
}
