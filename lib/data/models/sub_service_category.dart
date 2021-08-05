import 'package:flutter/cupertino.dart';

import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/data/models/sub_service_category_image.dart';

class SubServiceCategory extends ServiceCategory {
  String? position;
  String? phoneNumber;
  double? note;
  double? prix;
  String? description;
  List<SubServiceCategoryImage> gallery;
  SubServiceCategory({
    this.prix,
    this.position,
    this.phoneNumber,
    this.note,
    this.description,
    required this.gallery,
    required String name,
    required IconData icon,
    required Color color,
    required String imageName,
  }) : super(name: name, icon: icon, color: color, imageName: imageName);
}
