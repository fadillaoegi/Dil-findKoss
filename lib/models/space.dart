// class Space {
//   int? id;
//   String? name;
//   String? imageUrl;
//   int? price;
//   String? city;
//   String? country;
//   int? rating;
//   String? address;
//   String? phone;
//   String? mapUrl;
//   List? photos;
//   int? numberOfKitchens;
//   int? numberOfBedrooms;
//   int? numberOfCupboards;

//   Space({
//     this.city,
//     this.country,
//     this.id,
//     this.imageUrl,
//     this.name,
//     this.price,
//     this.rating,
//     this.address,
//     this.mapUrl,
//     this.numberOfBedrooms,
//     this.numberOfCupboards,
//     this.numberOfKitchens,
//     this.phone,
//     this.photos,
//   });

//   Space.fromJson(json) {
//     id = json['id'];
//     name = json['name'];
//     city = json['city'];
//     country = json['country'];
//     imageUrl = json['image_url'];
//     price = json['price'];
//     rating = json['rating'];
//     address = json['address'];
//     phone = json['phone'];
//     mapUrl = json['map_url'];
//     photos = json['photos'];
//     numberOfBedrooms = json['number_of_bedrooms'];
//     numberOfCupboards = json['number_of_cupboards'];
//     numberOfKitchens = json['number_of_kitchens'];
//   }
// }

// // To parse this JSON data, do

// final space = spaceFromJson(jsonString);

import 'dart:convert';

Space spaceFromJson(String str) => Space.fromJson(json.decode(str));

String spaceToJson(Space data) => json.encode(data.toJson());

class Space {
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
