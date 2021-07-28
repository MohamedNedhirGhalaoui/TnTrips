import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.restaurant_menu_rounded),
            )
          ],
          title: Text('Restaurants'),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
      );
}