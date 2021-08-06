import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  MainAppBar({Key? key}) : super(key: key);

  @override
  _MainAppBarState createState() => _MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(50.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(10),
          child: ClipOval(
            child: Image.asset("assets/images/welcome1.png"),
          ),
        )
      ],
      iconTheme: IconThemeData(color: kPrimaryColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: CircleAvatar(
        backgroundImage: AssetImage("assets/images/trip.png"),
        radius: 26,
      ),
      elevation: 0.0,
    );
  }
}
