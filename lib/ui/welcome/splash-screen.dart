import "package:flutter/material.dart";
import 'package:tn_trips/common/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen_components/login_screen_background.dart';

class SplashScreen extends StatelessWidget {
  final int duration;
  final Widget? goTopage;
  SplashScreen({required this.duration, this.goTopage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => this.goTopage!));
    });
    return Scaffold(
      body: LoginScreenBackground(
        child: Column(
          children: [
            SizedBox(height: 100.0),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/trip.png"),
              radius: 90.0,
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              "TN TRIPS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(120.0),
                child: Center(
                  child: SpinKitFadingCube(
                    color: kPrimaryColor,
                    size: 100.0,
                  ),
                ),
              ),
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
