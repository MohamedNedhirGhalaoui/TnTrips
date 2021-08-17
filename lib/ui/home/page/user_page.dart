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
      );
}
