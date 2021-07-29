import 'package:flutter/material.dart';
import 'package:tn_trips/ui/common/text_field_container.dart';
import 'package:tn_trips/common/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  static String password = '';
  const RoundedPasswordField({
    required this.onChanged,
  });

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) =>
            value!.length < 6 ? "Enter an password 6 chars +" : null,
        obscureText: obscureText,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
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
