import 'package:tn_trips/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_city_components.dart';

class Home extends StatelessWidget {
  List<City> citys = Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.home),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text("TN TRIPS"),
        elevation: 0.0,
      ),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BuildBottomNavigationBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: citys.length,
                  itemBuilder: (BuildContext contexte, int index) {
                    return BuildCityComponents(city: citys[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
