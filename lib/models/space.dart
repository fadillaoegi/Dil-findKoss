// To parse this JSON data, do
//
//     final space = spaceFromJson(jsonString);

import 'dart:convert';

Space spaceFromJson(String str) => Space.fromJson(json.decode(str));

String spaceToJson(Space data) => json.encode(data.toJson());

class Space {
  Space({
    required this.id,
    this.price,
    this.numberOfKitchen,
    this.numberOfBedRooms,
    this.numberOfClipBoard,
    this.phone,
    this.imageUrl,
    this.mapUrl,
    this.name,
    this.country,
    this.rating,
    this.city,
  });

  int id;
  int? price;
  int? numberOfKitchen;
  int? numberOfBedRooms;
  int? numberOfClipBoard;
  String? phone;
  String? imageUrl;
  String? mapUrl;
  String? name;
  String? country;
  double? rating;
  String? city;

  factory Space.fromJson(Map<String, dynamic> json) => Space(
        id: json["id"],
        price: json["price"],
        numberOfKitchen: json["numberOfKitchen"],
        numberOfBedRooms: json["numberOfBedRooms"],
        numberOfClipBoard: json["numberOfClipBoard"],
        phone: json["phone"],
        imageUrl: json["imageUrl"],
        mapUrl: json["mapUrl"],
        name: json["name"],
        country: json["country"],
        rating: json["rating"].toDouble(),
        city: json["city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "numberOfKitchen": numberOfKitchen,
        "numberOfBedRooms": numberOfBedRooms,
        "numberOfClipBoard": numberOfClipBoard,
        "phone": phone,
        "imageUrl": imageUrl,
        "mapUrl": mapUrl,
        "name": name,
        "country": country,
        "rating": rating,
        "city": city,
      };
}




// class Space {
//   int id;
//   int price;
//   int numberOfKitchen;
//   int numberOfBedrooms;
//   int numberOfCupBoard;
//   String name;
//   String imageUrl;
//   String mapUrl;
//   String phone;
//   String address;
//   String city;
//   String country;
//   double rating;
//   List photos;

//   Space(
//       this.id,
//       this.name,
//       this.imageUrl,
//       this.price,
//       this.city,
//       this.country,
//       this.rating,
//       this.address,
//       this.mapUrl,
//       this.numberOfBedrooms,
//       this.numberOfCupBoard,
//       this.numberOfKitchen,
//       this.phone,
//       this.photos);

//       factory Space.fromJson(Map<String, dynamic>json) => Space(, name, imageUrl, price, city, country, rating, address, mapUrl, numberOfBedrooms, numberOfCupBoard, numberOfKitchen, phone, photos)
// }
