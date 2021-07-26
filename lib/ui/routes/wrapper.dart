import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/ui/welcome/welcome_screen.dart';
import 'package:tn_trips/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CurrentUser?>(context);
    //return either home or welcome_screen page
    if (user == null) {
      return WelcomeScreen();
    } else {
      return Home();
    }
  }
}
