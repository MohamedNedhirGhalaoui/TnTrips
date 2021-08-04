import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';

import 'build_icon.dart';

class BuildCityComponents extends StatelessWidget {
  final City city;
  final Function onCityClick;
  const BuildCityComponents(
      {Key? key, required this.city, required this.onCityClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCityClick();
      },
      child: Container(
        margin: EdgeInsets.all(20.0),
        height: 150.0,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/citys/" + this.city.imageName + ".jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    BuildIcon(color: HOTELS, icon:city.icons[0]),
                    SizedBox(
                      width: 10.0,
                    ),
                    BuildIcon(color: RESTAURANTS, icon:city.icons[1]),
                    SizedBox(
                      width: 10.0,
                    ),
                    BuildIcon(color: CAFES, icon:city.icons[2]),
                    SizedBox(
                      width: 10.0,
                    ),
                    BuildIcon(color: SPORTS, icon:city.icons[3]),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      city.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
