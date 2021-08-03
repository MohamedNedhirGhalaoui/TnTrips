import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/page/selected_city_page.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_city_components.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

class Home extends StatelessWidget {
  List<City> citys = Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: MainAppBar(),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BuildBottomNavigationBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 10.0),
                  itemCount: citys.length,
                  itemBuilder: (BuildContext contexte, int index) {
                    return BuildCityComponents(
                      city: citys[index],
                      onCityClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contexte) => SelectedCityPage(
                              city: citys[index],
                            ),
                          ),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
