import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/ui/home/drawer/navigation_drawer_widget.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          )
        ],
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text("TN TRIPS"),
        elevation: 0.0,
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}
