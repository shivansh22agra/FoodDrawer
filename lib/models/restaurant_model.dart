// To parse this JSON data, do
//
//     final Restaurant = RestaurantFromJson(jsonString);

import 'dart:convert';

Restaurant RestaurantFromJson(String str) => Restaurant.fromJson(json.decode(str));

String RestaurantToJson(Restaurant data) => json.encode(data.toJson());



class Restaurant {
    Restaurant({
        this.id,
        this.name,
        this.image,
        this.v,
    });

    String? id;
    String? name;
    String? image;
    int? v;

    Restaurant copyWith({
        String? id,
        String? name,
        String? image,
        int? v,
    }) => 
        Restaurant(
            id: id ?? this.id,
            name: name ?? this.name,
            image: image ?? this.image,
            v: v ?? this.v,
        );

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "__v": v,
    };
}
