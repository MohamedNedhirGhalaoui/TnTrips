import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.contact_mail),
            )
          ],
          title: Text('Contact Us'),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
      );
}
