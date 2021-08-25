import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';
import 'package:tn_trips/data/services/data_base_service.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_icon.dart';
import 'package:tn_trips/use_cases/category_selection.dart';

class SportsPage extends StatelessWidget {
  List<SubServiceCategory> sports = [];

  @override
  Widget build(BuildContext context) {
    DataBaseservice dataBaseservice = Provider.of(context, listen: false);
    List<City> citys = dataBaseservice.getCitys();
    citys.forEach((city) {
      city.servicecategorys[3].subServiceCategorys!
          .forEach((subServiceCategory) {
        sports.add(subServiceCategory);
      });
    });
    CategorySelection categorySelection =
        Provider.of<CategorySelection>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.sports),
          )
        ],
        title: Text('Sports'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: BuildBottomNavigationBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildIcon(color: HOTELS, icon: this.sports[0].icon),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                  this.sports.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        categorySelection.selectedSubServiceCategory =
                            this.sports[index];
                        Navigator.of(context).pushNamed('/detailesPage');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/services/hotels/tunisia/" +
                                    this.sports[index].imageName +
                                    ".jpg",
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              this.sports[index].name,
                              style: TextStyle(
                                color: this.sports[index].color,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
