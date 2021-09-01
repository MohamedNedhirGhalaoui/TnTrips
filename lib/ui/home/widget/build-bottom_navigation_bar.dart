import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  const BuildBottomNavigationBar({Key? key}) : super(key: key);
  //final urlImage = "assets/images/welcome1.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context)
                  .popUntil((route) => route.settings.name == '/wrapper');
            },
            icon: Icon(Icons.home),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed('/locationPage');
            },
            icon: Icon(Icons.location_on),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed('/favouritesPage');
            },
            icon: Icon(Icons.favorite),
            iconSize: 32.0,
            color: kPrimaryColor,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed('/userPage');
            },
            icon: Icon(Icons.person),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).pushNamed('/settingsPage');
            },
            icon: Icon(Icons.settings),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
        ]),
      ),
    );
  }
}
