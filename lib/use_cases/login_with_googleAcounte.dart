import 'package:firebase_auth/firebase_auth.dart';
import 'package:tn_trips/data/models/current_user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginWithGoogleAcounte {
  CurrentUser? _currentUser;

  CurrentUser? get loggedInCurrentUser=> _currentUser;

  Future<bool> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return false;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    ) as GoogleAuthCredential;

    // Once signed in, return the UserCredential
    UserCredential userCreds =
        await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCreds != null) {
      _currentUser = CurrentUser(
          uid: userCreds.user!.uid,
          displayName: userCreds.user!.displayName,
          photoUrl: userCreds.user!.photoURL,
          email: userCreds.user!.email);
    }

    //notifyListeners();

    return true;
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    _currentUser = null;
  }

  bool isUserLoggedIn() {
    return _currentUser != null;
  }
}
