import "package:flutter/material.dart";
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/routes/wrapper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tn_trips/screens/authenticate/Login/components/background.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupLoading() async {
    await Future.delayed(Duration(seconds: 10));
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
      body: Background(
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
