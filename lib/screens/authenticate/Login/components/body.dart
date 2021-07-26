import 'package:flutter/material.dart';
import 'package:tn_trips/screens/authenticate/Login/components/background.dart';
import 'package:tn_trips/screens/authenticate/Signup/signup_screen.dart';
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
  String email = '';

  String password = '';

  String error = '';

  final _formkey = GlobalKey<FormState>();
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
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
                    text: "LOGIN",
                    press: () async {
                      if (_formkey.currentState!.validate()) {
                        dynamic _resutl = await _auth
                            .signInWithEmailAndPassword(email, password);
                        if (_resutl == null) {
                          setState(() {
                            error = _auth.error_signIn.substring(30);
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
              press: () {
                Navigator.pushReplacement(
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
