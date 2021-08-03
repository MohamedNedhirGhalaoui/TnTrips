import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/ui/home/page/selected_sub_service_category.dart';
import 'package:tn_trips/ui/home/widget/build_service_category.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

class SelectedCityPage extends StatelessWidget {
  final City city;
  SelectedCityPage({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  this.city.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children:
                    List.generate(this.city.servicecategorys.length, (index) {
                  return BuildServiceCategory(
                    serviceCategory: city.servicecategorys[index],
                    onServiceCategoryClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectedSubServiceCategory(
                                  selectedServiceCategory:
                                      city.servicecategorys[index])));
                    },
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
