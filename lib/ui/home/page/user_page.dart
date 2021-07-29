import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(urlImage),
              ),
            )
          ],
          backgroundColor: kPrimaryColor,
          title: Text(name),
          centerTitle: true,
        ),
      );
}
