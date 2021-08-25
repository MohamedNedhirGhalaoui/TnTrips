import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/services/auth_service.dart';
import 'package:tn_trips/use_cases/login_with_googleAcounte.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    LoginWithGoogleAcounte loginWithGoogleAcounte =
        Provider.of<LoginWithGoogleAcounte>(context, listen: false);
    return Drawer(
      child: Material(
        color: kPrimaryColor,
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildHeader(
                      urlImage: "assets/images/trip.png", name: "TN TRIPS"),
                  buildSearchField(),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Hotels',
                    icon: Icons.local_hotel_rounded,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 20),
                  buildMenuItem(
                    text: 'Restaurants',
                    icon: Icons.restaurant_menu_rounded,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 20),
                  buildMenuItem(
                    text: 'cafes',
                    icon: Icons.coffee_maker_rounded,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 20),
                  buildMenuItem(
                    text: 'Sports',
                    icon: Icons.sports,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 20),
                  buildMenuItem(
                      text: 'Logout',
                      icon: Icons.logout,
                      onClicked: () async {
                        if (loginWithGoogleAcounte.isUserLoggedIn()) {
                          await loginWithGoogleAcounte.signOut();
                          Navigator.of(context).popUntil(
                              (route) => route.settings.name == '/wrapper');
                          await _auth.signOut();
                        } else {
                          await _auth.signOut();
                        }
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
  }) =>
      Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: AssetImage(urlImage)),
            SizedBox(width: 20),
            Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child: Icon(Icons.add_comment_outlined, color: Colors.white),
            )
          ],
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    //Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).pushNamed('/hotelsPage');
        break;
      case 1:
        Navigator.of(context).pushNamed('/restaurantsPage');
        break;
      case 2:
        Navigator.of(context).pushNamed('/cafesPage');
        break;
      case 3:
        Navigator.of(context).pushNamed('/sportsPage');
        break;
    }
  }

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
}
