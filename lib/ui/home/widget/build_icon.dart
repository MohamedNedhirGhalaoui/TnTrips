import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  BuildIcon({Key? key, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: Colors.white,
          size: 25.0,
        ),
      ),
    );
  }
}
