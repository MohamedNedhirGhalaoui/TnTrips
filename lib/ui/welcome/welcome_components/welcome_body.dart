import 'package:flutter/material.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_screen.dart';
import 'package:tn_trips/ui/welcome/onboarding_page.dart';
import 'package:tn_trips/ui/welcome/welcome_components/image_theme.dart';
import 'package:tn_trips/ui/welcome/welcome_components/welcome_background.dart';
import 'package:tn_trips/ui/common/rounded_button.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO TN TRIPS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            ImageTheme(image: "trip"),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              color: kPrimaryColor,
              icon: Icons.auto_stories,
              text: "About Us",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OnBoardingPage();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              color: kPrimaryColor,
              icon: Icons.login,
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              icon: Icons.login,
              text: "SIGN UP",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
