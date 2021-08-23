import 'package:flutter/cupertino.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';

class ServiceCategory {
  String name;
  Color color;
  IconData icon;
  String imageName;
  List<SubServiceCategory>? subServiceCategorys;
  ServiceCategory(
      {required this.name,
      required this.color,
      required this.icon,
      required this.imageName,
      this.subServiceCategorys});

  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    return ServiceCategory(
        name: json['name'],
        color: Color(int.parse(json['color'])),
        icon: IconData(int.parse(json['icon']), fontFamily: "MaterialIcons"),
        imageName: json['imageName'],
        subServiceCategorys: SubServiceCategory.fromJsonArray(json['subServiceCategorys']));
  }

  static List<ServiceCategory> fromJsonArray(List<dynamic> jsonArray) {
    List<ServiceCategory> serviceCategoriesFromJson = [];

    jsonArray.forEach((jsonData) {
      serviceCategoriesFromJson.add(ServiceCategory.fromJson(jsonData));
    });

    return serviceCategoriesFromJson;
  }
}
