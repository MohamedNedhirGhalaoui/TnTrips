import 'package:tn_trips/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';
import 'package:tn_trips/ui/home/page/chats_page.dart';
import 'package:tn_trips/ui/home/page/location_page.dart';
import 'package:tn_trips/ui/home/page/user_page.dart';

class Home extends StatelessWidget {
  final urlImage =
      "https://scontent.ftun10-1.fna.fbcdn.net/v/t1.6435-9/198764751_1634485790073693_2079059947597904212_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=3qxqOM63EagAX9OzeaX&tn=mJOlMso_Q5NB-1Io&_nc_ht=scontent.ftun10-1.fna&oh=2a31ffd747f1da35a21f932364453dc5&oe=6127D881";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_rounded)),
          )
        ],
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text("TN TRIPS"),
        elevation: 0.0,
      ),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LocationPage()));
              },
              icon: Icon(Icons.location_on),
              color: Colors.white,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChatsPage()));
              },
              icon: Icon(Icons.chat),
              color: Colors.white,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        UserPage(name: "Nedhir", urlImage: urlImage)));
              },
              icon: Icon(Icons.person),
              color: Colors.white,
              iconSize: 30.0,
            ),
          ]),
        ),
      ),
    );
  }
}

