import 'package:flutter/cupertino.dart';

class ServiceCategory {
  String name;
  Color color;
  IconData icon;
  String imageName;
  List<ServiceCategory>? subServiceCategorys;
  ServiceCategory(
      {required this.name,
      required this.color,
      required this.icon,
      required this.imageName,
      this.subServiceCategorys});
}
