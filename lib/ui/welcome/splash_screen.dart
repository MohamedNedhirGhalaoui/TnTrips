import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:tn_trips/common/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen_components/login_screen_background.dart';

class SplashScreen extends StatelessWidget {
  final int duration;
  final String? goTopage;
  SplashScreen({required this.duration, this.goTopage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () async {
      //fetch the list of city from the Firebase
      
      Navigator.of(context).pushReplacementNamed(this.goTopage!);
    });
    return Scaffold(
      body: LoginScreenBackground(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/trip.png"),
                  radius: 80,
                ),
                SizedBox(
                  width: 160,
                  height: 160,
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/welcome1.png"),
                  radius: 30.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/welcome2.png"),
                  radius: 30.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/welcome3.png"),
                  radius: 30.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
