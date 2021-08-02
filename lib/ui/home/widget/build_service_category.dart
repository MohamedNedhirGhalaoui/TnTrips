import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/service_catagory.dart';

class BuildServiceCategory extends StatelessWidget {
  final ServiceCategory serviceCategory;
  final Function onServiceCategoryClick;
  const BuildServiceCategory(
      {Key? key,
      required this.serviceCategory,
      required this.onServiceCategoryClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onServiceCategoryClick();
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
                  "assets/images/services/" +
                      this.serviceCategory.imageName +
                      ".jpg",
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
                    ClipOval(
                      child: Container(
                        color: this.serviceCategory.color,
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          this.serviceCategory.icon,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      this.serviceCategory.name,
                      style: TextStyle(color: Colors.white, fontSize: 17),
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
