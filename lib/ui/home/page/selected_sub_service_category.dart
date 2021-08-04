import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/ui/home/page/detailes_page.dart';
import 'package:tn_trips/ui/home/widget/build_icon.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

class SelectedSubServiceCategory extends StatelessWidget {
  final ServiceCategory selectedServiceCategory;
  const SelectedSubServiceCategory(
      {Key? key, required this.selectedServiceCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildIcon(
                    color: this.selectedServiceCategory.color,
                    icon: this.selectedServiceCategory.icon),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  this.selectedServiceCategory.name,
                  style: TextStyle(
                    color: this.selectedServiceCategory.color,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  this.selectedServiceCategory.subServiceCategorys!.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                subServiceCategory: this
                                    .selectedServiceCategory
                                    .subServiceCategorys![index]),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/services/hotels/tunisia/" +
                                    this
                                        .selectedServiceCategory
                                        .subServiceCategorys![index]
                                        .imageName +
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
                              this
                                  .selectedServiceCategory
                                  .subServiceCategorys![index]
                                  .name,
                              style: TextStyle(
                                color: this
                                    .selectedServiceCategory
                                    .subServiceCategorys![index]
                                    .color,
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
