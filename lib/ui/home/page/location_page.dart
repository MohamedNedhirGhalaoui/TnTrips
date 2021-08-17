import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MainAppBar(),
        bottomNavigationBar: BuildBottomNavigationBar(),
      );
}
