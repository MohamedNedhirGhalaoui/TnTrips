import "package:flutter/material.dart";
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/routes/wrapper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen_components/login_screen_background.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupLoading() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Wrapper();
    }));
  }

  @override
  void initState() {
    super.initState();
    setupLoading();
  }

  @override
  Widget build(BuildContext context) {
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
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/welcomme.png"),
              radius: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
