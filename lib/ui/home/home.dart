import 'package:tn_trips/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/services/Utils.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/page/chats_page.dart';
import 'package:tn_trips/ui/home/page/contact_us_page.dart';
import 'package:tn_trips/ui/home/page/location_page.dart';
import 'package:tn_trips/ui/home/page/recommended_places_page.dart';
import 'package:tn_trips/ui/home/page/settings_page.dart';
import 'package:tn_trips/ui/home/page/user_page.dart';

class Home extends StatelessWidget {
  final urlImage =
      "https://scontent.ftun10-1.fna.fbcdn.net/v/t1.6435-9/198764751_1634485790073693_2079059947597904212_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3qxqOM63EagAX9OzeaX&tn=mJOlMso_Q5NB-1Io&_nc_ht=scontent.ftun10-1.fna&oh=2a31ffd747f1da35a21f932364453dc5&oe=6127D881";
  List<City> citys = Utils.getCitys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.home),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text("TN TRIPS"),
        elevation: 0.0,
      ),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Text(
                "Choose your citiy",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: citys.length,
                  itemBuilder: (BuildContext contexte, int index) {
                    return Container(
                      margin: EdgeInsets.all(20.0),
                      height: 150.0,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                "assets/images/citys/" +
                                    citys[index].imageName +
                                    ".jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.0,
                                ),
                                buildCityIcons(HOTELS, 0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                buildCityIcons(RESTAURANTS, 1),
                                SizedBox(
                                  width: 10.0,
                                ),
                                buildCityIcons(CAFES, 2),
                                SizedBox(
                                  width: 10.0,
                                ),
                                buildCityIcons(SPORTS, 3),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  citys[index].name,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LocationPage()));
            },
            icon: Icon(Icons.location_on),
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ChatsPage()));
            },
            icon: Icon(Icons.chat),
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RecommendedPlacesPage()));
            },
            icon: Icon(Icons.recommend_rounded),
            iconSize: 30.0,
            color: Colors.white,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      UserPage(name: "Nedhir", urlImage: urlImage)));
            },
            icon: Icon(Icons.person),
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactUsPage()));
            },
            icon: Icon(Icons.contact_mail),
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
            iconSize: 30.0,
          ),
        ]),
      ),
    );
  }

  Widget buildCityIcons(Color color, int index) {
    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(10.0),
        child: Icon(
          citys[index].icons[index],
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
