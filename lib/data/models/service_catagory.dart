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
}
