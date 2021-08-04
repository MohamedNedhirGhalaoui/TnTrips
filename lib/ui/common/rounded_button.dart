import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String text;
  IconData icon;
  Function press;
  Color color, textColor;

  RoundedButton({
    required this.icon,
    required this.text,
    required this.press,
    required this.color,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          offset: Offset.zero,
          blurRadius: 200,
        ),
      ]),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press as Function(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 20.0,
                ),
              ],
            )),
      ),
    );
  }
}
