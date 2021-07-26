import 'package:flutter/material.dart';
import 'package:tn_trips/screens/authenticate/Login/login_screen.dart';
import 'package:tn_trips/screens/authenticate/Signup/components/background.dart';
import 'package:tn_trips/screens/authenticate/Signup/components/or_divider.dart';
import 'package:tn_trips/screens/authenticate/Signup/components/social_icon.dart';
import 'package:tn_trips/screens/common/already_have_an_account_acheck.dart';
import 'package:tn_trips/screens/common/rounded_button.dart';
import 'package:tn_trips/screens/common/rounded_input_field.dart';
import 'package:tn_trips/screens/common/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tn_trips/services/auth_service.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AuthService _auth = AuthService();

  String email = '';

  String password = '';
  String error = '';

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () async {
                      if (_formkey.currentState!.validate()) {
                        dynamic _resutl = await _auth
                            .registerWithEmailAndPassword(email, password);
                        if (_resutl == null) {
                          setState(() {
                            error = _auth.error_register.substring(36);
                          });
                        } else {
                          Navigator.pop(context, {});
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              error,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
