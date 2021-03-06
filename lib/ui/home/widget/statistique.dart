import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Statistique extends StatelessWidget {
  final String text;
  Statistique({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.grey[900],
        padding: EdgeInsets.all(10.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
