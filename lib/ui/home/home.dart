import 'package:tn_trips/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/page/selected_city_page.dart';
import 'package:tn_trips/ui/home/widget/build-bottom_navigation_bar.dart';
import 'package:tn_trips/ui/home/widget/build_city_components.dart';

class Home extends StatelessWidget {
  List<City> citys = Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
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
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BuildBottomNavigationBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: citys.length,
                  itemBuilder: (BuildContext contexte, int index) {
                    return BuildCityComponents(
                      city: citys[index],
                      onCityClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contexte) => SelectedCityPage()));
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
