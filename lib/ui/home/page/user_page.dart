import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

import 'notifications_page.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(urlImage),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotificationsPage()));
              },
              icon: Icon(Icons.notifications_active_rounded),
              iconSize: 30.0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,10.0,10.0,10.0),
              child: Text("0"),
            )
          ],
          backgroundColor: kPrimaryColor,
          title: Text(name),
          centerTitle: true,
        ),
      );
}
