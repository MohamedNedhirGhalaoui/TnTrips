import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';

class BuildCityIcons extends StatelessWidget {
  final Color color;
  final int index;
   BuildCityIcons({Key? key, required this.color, required this.index}) : super(key: key);

  List<City> citys = Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(10.0),
        child: Icon(
          citys[index].icons[index],
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
