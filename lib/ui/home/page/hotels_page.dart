import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
class HotelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.local_hotel_rounded),
            )
          ],
          title: Text('Hotels'),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
        bottomNavigationBar: BuildBottomNavigationBar(),
      );
}
