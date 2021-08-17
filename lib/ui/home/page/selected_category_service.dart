import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/ui/home/widget/build_icon.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';
import 'package:tn_trips/use_cases/category_selection.dart';

class SelectedCategoryService extends StatelessWidget {
  ServiceCategory? slectedCategoryService;
  SelectedCategoryService({Key? key, this.slectedCategoryService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategorySelection categorySelection =
        Provider.of<CategorySelection>(context, listen: false);
    slectedCategoryService = categorySelection.selectedServiceCategory;
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
                    color: this.slectedCategoryService!.color,
                    icon: this.slectedCategoryService!.icon),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  this.slectedCategoryService!.name,
                  style: TextStyle(
                    color: this.slectedCategoryService!.color,
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
                physics: BouncingScrollPhysics(),
                children: List.generate(
                  this.slectedCategoryService!.subServiceCategorys!.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        categorySelection.selectedSubServiceCategory = this
                            .slectedCategoryService!
                            .subServiceCategorys![index];
                        Navigator.of(context).pushNamed('/detailesPage');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/services/hotels/tunisia/" +
                                    this
                                        .slectedCategoryService!
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
                                  .slectedCategoryService!
                                  .subServiceCategorys![index]
                                  .name,
                              style: TextStyle(
                                color: this
                                    .slectedCategoryService!
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
