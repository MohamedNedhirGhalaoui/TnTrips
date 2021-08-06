import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_components/signup_background.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_components/or_divider.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_components/signup_social_icon.dart';
import 'package:tn_trips/ui/common/already_have_an_account_acheck.dart';
import 'package:tn_trips/ui/common/rounded_button.dart';
import 'package:tn_trips/ui/common/rounded_confirme_password_field.dart';
import 'package:tn_trips/ui/common/rounded_input_field.dart';
import 'package:tn_trips/ui/common/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tn_trips/data/services/auth_service.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  AuthService _auth = AuthService();

  String email = '';

  String password = '';

  String error = '';

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUPBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                        RoundedPasswordField.password = value;
                        password = value;
                      });
                    },
                  ),
                  RoundedConfirmePasswordField(
                    onChanged: (value) {
                      setState(() {
                        RoundedConfirmePasswordField.confirmePassword = value;
                      });
                    },
                  ),
                  RoundedButton(
                    icon: Icons.login,
                    color: kPrimaryColor,
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
                          AuthService.currentUser = _resutl;

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
              textAlign: TextAlign.center,
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
