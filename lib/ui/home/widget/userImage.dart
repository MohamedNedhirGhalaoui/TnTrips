import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/use_cases/login_with_googleAcounte.dart';

class UserImage extends StatelessWidget {
  static CurrentUser? _currentUser;
  static LoginWithGoogleAcounte? loginWithGoogleAcounte;
  const UserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loginWithGoogleAcounte =
        Provider.of<LoginWithGoogleAcounte>(context, listen: false);
    _currentUser = loginWithGoogleAcounte!.loggedInCurrentUser;
    if (loginWithGoogleAcounte!.isUserLoggedIn()) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(10),
          child: ClipOval(
            child: Image.network(_currentUser!.photoUrl!),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(10),
          child: ClipOval(
            child: Image.asset("assets/images/welcome1.png"),
          ),
        ),
      );
    }
  }
}
