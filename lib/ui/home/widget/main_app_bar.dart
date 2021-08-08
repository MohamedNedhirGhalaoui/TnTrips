import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/home/widget/userImage.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _MainAppBarState createState() => _MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(50.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [UserImage()],
      iconTheme: IconThemeData(color: kPrimaryColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/trip.png"),
          radius: 26,
        ),
      ),
      elevation: 0.0,
    );
  }
}
