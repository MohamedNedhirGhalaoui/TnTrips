import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

class RecommendedPlacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.recommend),
            )
          ],
          title: Text('Recommended Places'),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
      );
}
