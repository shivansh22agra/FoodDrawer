// To parse this JSON Menu, do
//
//     final menu = menuFromJson(jsonString);

import 'dart:convert';

// Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));

// String menuToJson(Menu Menu) => json.encode(Menu.toJson());

// class Menu {
//     Menu({
//         this.Menu,
//     });

//     Menu? Menu;

//     Menu copyWith({
//         Menu? Menu,
//     }) => 
//         Menu(
//             Menu: Menu ?? this.Menu,
//         );

//     factory Menu.fromJson(Map<String, dynamic> json) => Menu(
//         Menu: json["Menu"] == null ? null : Menu.fromJson(json["Menu"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "Menu": Menu?.toJson(),
//     };
// }

class Menu {
    Menu({
        this.restaurantName,
        this.name,
        this.type,
        this.actualCost,
        this.discountedCost,
        this.foodType,
        this.quantity,
        this.image,
        this.id,
        this.v,
    });

    String? restaurantName;
    String? name;
    String? type;
    int? actualCost;
    int? discountedCost;
    String? foodType;
    int? quantity;
    String? image;
    String? id;
    int? v;

    Menu copyWith({
        String? restaurantName,
        String? name,
        String? type,
        int? actualCost,
        int? discountedCost,
        String? foodType,
        int? quantity,
        String? image,
        String? id,
        int? v,
    }) => 
        Menu(
            restaurantName: restaurantName ?? this.restaurantName,
            name: name ?? this.name,
            type: type ?? this.type,
            actualCost: actualCost ?? this.actualCost,
            discountedCost: discountedCost ?? this.discountedCost,
            foodType: foodType ?? this.foodType,
            quantity: quantity ?? this.quantity,
            image: image ?? this.image,
            id: id ?? this.id,
            v: v ?? this.v,
        );

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        restaurantName: json["restaurantName"],
        name: json["name"],
        type: json["type"],
        actualCost: json["Actual_cost"],
        discountedCost: json["discounted_cost"],
        foodType: json["food_type"],
        quantity: json["quantity"],
        image: json["image"],
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "restaurantName": restaurantName,
        "name": name,
        "type": type,
        "Actual_cost": actualCost,
        "discounted_cost": discountedCost,
        "food_type": foodType,
        "quantity": quantity,
        "image": image,
        "_id": id,
        "__v": v,
    };
}
