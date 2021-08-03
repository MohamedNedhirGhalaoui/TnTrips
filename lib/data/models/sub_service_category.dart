import 'package:flutter/cupertino.dart';

import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/data/models/sub_service_category_image.dart';

class SubServiceCategory extends ServiceCategory {
  List<SubServiceCategoryImage> gallery;
  SubServiceCategory({
    required this.gallery,
    required String name,
    required IconData icon,
    required Color color,
    required String imageName,
  }) : super(name: name, icon: icon, color: color, imageName: imageName);
}
