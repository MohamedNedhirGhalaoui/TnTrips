import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/home/page/chats_page.dart';
import 'package:tn_trips/ui/home/page/contact_us_page.dart';
import 'package:tn_trips/ui/home/page/location_page.dart';
import 'package:tn_trips/ui/home/page/recommended_places_page.dart';
import 'package:tn_trips/ui/home/page/settings_page.dart';
import 'package:tn_trips/ui/home/page/user_page.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  const BuildBottomNavigationBar({Key? key}) : super(key: key);
  final urlImage =
      "https://scontent.ftun10-1.fna.fbcdn.net/v/t1.6435-9/198764751_1634485790073693_2079059947597904212_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3qxqOM63EagAX9OzeaX&tn=mJOlMso_Q5NB-1Io&_nc_ht=scontent.ftun10-1.fna&oh=2a31ffd747f1da35a21f932364453dc5&oe=6127D881";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.only(bottom:20),
      color: Colors.transparent,
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
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ChatsPage()));
            },
            icon: Icon(Icons.chat),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RecommendedPlacesPage()));
            },
            icon: Icon(Icons.recommend_rounded),
            iconSize: 32.0,
            color: kPrimaryColor,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      UserPage(name: "Nedhir", urlImage: urlImage)));
            },
            icon: Icon(Icons.person),
            color:kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactUsPage()));
            },
            icon: Icon(Icons.contact_mail),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
          IconButton(
            splashColor: kPrimaryColor,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
            icon: Icon(Icons.settings),
            color: kPrimaryColor,
            iconSize: 32.0,
          ),
        ]),
      ),
    );
  }
}
