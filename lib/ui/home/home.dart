import 'package:tn_trips/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_cityIcons.dart';

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
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Text(
                "Choose your citiy",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: citys.length,
                  itemBuilder: (BuildContext contexte, int index) {
                    return Container(
                      margin: EdgeInsets.all(20.0),
                      height: 150.0,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                "assets/images/citys/" +
                                    citys[index].imageName +
                                    ".jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.0,
                                ),
                                BuildCityIcons(color: HOTELS, index: 0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                BuildCityIcons(color: RESTAURANTS, index: 1),
                                SizedBox(
                                  width: 10.0,
                                ),
                                BuildCityIcons(color: CAFES, index: 2),
                                SizedBox(
                                  width: 10.0,
                                ),
                                BuildCityIcons(color: SPORTS, index: 3),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  citys[index].name,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
