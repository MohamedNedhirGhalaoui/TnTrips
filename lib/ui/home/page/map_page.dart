import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

class MapPage extends StatelessWidget {
  final SubServiceCategory serviceCategorySelected;
  const MapPage({Key? key, required this.serviceCategorySelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Icon(
          Icons.location_on,
          color: this.serviceCategorySelected.color,
          size: 40,
        ),
      ),
    );
  }
}
