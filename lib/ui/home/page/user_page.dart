import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

import 'notifications_page.dart';

class UserPage extends StatelessWidget {
  final String? name;
  final String? urlImage;

  const UserPage({
    Key? key,
    this.name,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MainAppBar(),
        bottomNavigationBar: BuildBottomNavigationBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: kPrimaryColor,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text('User',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
      );
}
