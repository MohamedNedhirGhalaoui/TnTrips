import 'package:flutter/material.dart';
import 'package:tn_trips/ui/common/rounded_password_field.dart';
import 'package:tn_trips/ui/common/text_field_container.dart';
import 'package:tn_trips/common/constants.dart';

class RoundedConfirmePasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedConfirmePasswordField({
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          value != RoundedPasswordField.password
              ? "Enter an password identic "
              : null;
          print(RoundedPasswordField.password);
          print(value);
        },
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Confirme Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
