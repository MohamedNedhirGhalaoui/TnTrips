import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/service_catagory.dart';

class City {
  String name;
  List<IconData> icons;
  Color color;
  String imageName;
  List<ServiceCategory> servicecategorys;
  City(
      {required this.name,
      required this.icons,
      required this.color,
      required this.imageName,
      required this.servicecategorys});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
        name: json['name'],
        icons: [
          Icons.local_hotel_rounded,
          Icons.restaurant_menu_rounded,
          Icons.coffee_maker_rounded,
          Icons.sports
        ],
        color:Colors.white,
        imageName: json['imageName'],
        servicecategorys:
            ServiceCategory.fromJsonArray(json['servicecategorys']));
  }
}
