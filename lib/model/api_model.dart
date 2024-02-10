import 'dart:convert';

class RestaurantData {
  final List<RestaurantModel> suratRestaurants;

  RestaurantData({
    required this.suratRestaurants,
  });

  factory RestaurantData.fromJson(List<dynamic> json) {
    final suratRestaurants = json
        .map((item) => RestaurantModel.fromJson(item['suratRestaurants']))
        .toList();

    return RestaurantData(suratRestaurants: suratRestaurants);
  }
}

class RestaurantModel {
  final int id;
  final String name;
  final String address;
  final String phoneNumber;
  final List<MenuItem> menu;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.menu,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    final List<MenuItem> menu =
    json['menu'].map<MenuItem>((item) => MenuItem.fromJson(item)).toList();

    return RestaurantModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      menu: menu,
    );
  }
}

class MenuItem {
  final String name;
  final double price;
  final String image;


  MenuItem({
    required this.name,
    required this.price,
    required this.image,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}
