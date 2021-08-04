import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

class ImageTheme extends StatelessWidget {
  final String image;
  const ImageTheme({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60.0),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 5,
              offset: Offset.zero,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(
          "assets/images/" + image + ".png",
          width: width * 0.7,
        ),
      ),
    );
  }
}
