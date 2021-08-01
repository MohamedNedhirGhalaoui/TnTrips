import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class City {
  String name;
  List<IconData> icons;
  Color color;
  String imageName;
  City(
      {required this.name,
      required this.icons,
      required this.color,
      required this.imageName});
}
