import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/ui/home/page/selected_category_service.dart';
import 'package:tn_trips/ui/home/widget/build_service_category.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SelectedCityPage extends StatelessWidget {
  final City? city;
  SelectedCityPage({Key? key, this.city}) : super(key: key);

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
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      this.city!.name,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: Duration(microseconds: 1000),
                    ),
                    TyperAnimatedText(
                      "Hotels",
                      textStyle: TextStyle(
                        color: HOTELS,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TyperAnimatedText(
                      "Restaurants",
                      textStyle: TextStyle(
                        color: RESTAURANTS,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TyperAnimatedText(
                      "Cafes",
                      textStyle: TextStyle(
                        color: CAFES,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TyperAnimatedText(
                      "Sports",
                      textStyle: TextStyle(
                        color: SPORTS,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TyperAnimatedText(
                      this.city!.name,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: Duration(microseconds: 1000),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                physics: BouncingScrollPhysics(),
                children:
                    List.generate(this.city!.servicecategorys.length, (index) {
                  return BuildServiceCategory(
                    serviceCategory: city!.servicecategorys[index],
                    onServiceCategoryClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectedCategoryService(
                                  slectedCategoryService:
                                      city!.servicecategorys[index])));
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
