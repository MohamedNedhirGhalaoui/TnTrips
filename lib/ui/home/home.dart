import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/data_base_service.dart';
import 'package:tn_trips/data/services/utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_city_components.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';
import 'package:tn_trips/use_cases/category_selection.dart';

class Home extends StatelessWidget {
  List<City> citys = []; //Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    DataBaseservice dataBaseservice = Provider.of(context, listen: false);
    citys = dataBaseservice.getCitys();
    CategorySelection categorySelection =
        Provider.of<CategorySelection>(context, listen: false);
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
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext contexte, int index) {
                    return BuildCityComponents(
                      city: citys[index],
                      onCityClick: () {
                        categorySelection.selectedCity = this.citys[index];
                        Navigator.of(context).pushNamed('/selectedCityPage');
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
