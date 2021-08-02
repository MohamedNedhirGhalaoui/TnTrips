import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/ui/home/widget/build_service_category.dart';

class SelectedCityPage extends StatelessWidget {
  final City city;
  SelectedCityPage({Key? key, required this.city}) : super(key: key);

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
