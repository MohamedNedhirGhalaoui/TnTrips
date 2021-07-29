import 'package:flutter/material.dart';
import 'package:tn_trips/ui/common/rounded_password_field.dart';
import 'package:tn_trips/ui/common/text_field_container.dart';
import 'package:tn_trips/common/constants.dart';

class RoundedConfirmePasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  static String confirmePassword = '';
  const RoundedConfirmePasswordField({
    required this.onChanged,
  });

  @override
  _RoundedConfirmePasswordFieldState createState() =>
      _RoundedConfirmePasswordFieldState();
}

class _RoundedConfirmePasswordFieldState
    extends State<RoundedConfirmePasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (RoundedConfirmePasswordField.confirmePassword !=
              RoundedPasswordField.password) {
            return "Enter an password identic ";
          } else {
            return null;
          }
        },
        obscureText: obscureText,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Confirme Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
