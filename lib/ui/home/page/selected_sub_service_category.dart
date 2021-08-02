import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/service_catagory.dart';

class SelectedSubServiceCategory extends StatelessWidget {
  final ServiceCategory selectedServiceCategory;
  const SelectedSubServiceCategory(
      {Key? key, required this.selectedServiceCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.network(
                  "https://scontent.ftun10-1.fna.fbcdn.net/v/t1.6435-9/198764751_1634485790073693_2079059947597904212_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3qxqOM63EagAX9OzeaX&tn=mJOlMso_Q5NB-1Io&_nc_ht=scontent.ftun10-1.fna&oh=2a31ffd747f1da35a21f932364453dc5&oe=6127D881"),
            ),
          )
        ],
        iconTheme: IconThemeData(color: kPrimaryColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: CircleAvatar(
          backgroundImage: AssetImage("assets/images/trip.png"),
          radius: 26.5,
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    color: this.selectedServiceCategory.color,
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      this.selectedServiceCategory.icon,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ),
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
                    return GestureDetector(onTap: (){

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
