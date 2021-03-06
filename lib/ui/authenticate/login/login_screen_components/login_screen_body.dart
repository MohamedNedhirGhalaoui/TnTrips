import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen_components/login_screen_background.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_screen.dart';
import 'package:tn_trips/ui/common/already_have_an_account_acheck.dart';
import 'package:tn_trips/ui/common/loading.dart';
import 'package:tn_trips/ui/common/rounded_button.dart';
import 'package:tn_trips/ui/common/rounded_input_field.dart';
import 'package:tn_trips/ui/common/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tn_trips/data/services/auth_service.dart';

class LoginScreenBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<LoginScreenBody> {
  String email = '';

  String password = '';

  String error = '';
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading
        ? Loading()
        : LoginScreenBackground(
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
                          icon: Icons.login,
                          color: kPrimaryColor,
                          text: "LOGIN",
                          press: () async {
                            if (_formkey.currentState!.validate()) {
                              setState(() => loading = true);
                              dynamic _resutl = await _auth
                                  .signInWithEmailAndPassword(email, password);
                              if (_resutl == null) {
                                setState(() {
                                  error = _auth.error_signIn.substring(30);
                                  loading = false;
                                });
                              } else {
                                Navigator.of(context).popUntil((route) =>
                                    route.settings.name == '/wrapper');
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
                    press: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/signUpScreen');
                      ;
                    },
                  ),
                ],
              ),
            ),
          );
  }
}
