import 'package:flutter/cupertino.dart';

import 'package:tn_trips/data/models/service_catagory.dart';

class SubServiceCategory extends ServiceCategory {
  SubServiceCategory({
    required String name,
    required IconData icon,
    required Color color,
    required String imageName,
  }) : super(name: name, icon: icon, color: color, imageName: imageName);
}
