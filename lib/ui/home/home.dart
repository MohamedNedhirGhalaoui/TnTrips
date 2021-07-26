import 'package:tn_trips/data/services/auth_service.dart';
import 'package:flutter/material.dart';

import '../../common/constants.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("TN TRIPS"),
        actions: [
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text("logout"),
          )
        ],
        elevation: 0.0,
      ),
    );
  }
}
