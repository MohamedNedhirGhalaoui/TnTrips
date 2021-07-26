import 'package:tn_trips/data/models/current_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String error_register = '';
  String error_signIn = '';

  // create user obj based on firebase user
  CurrentUser? _userFromFirebaseUser(User? user) {
    return user != null ? CurrentUser(uid: user.uid) : null;
  }

  //auth change user strame
  Stream<CurrentUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anon just for test
  Future signInAnon() async {
    try {
      UserCredential _result = await _auth.signInAnonymously();
      User user = _result.user as User;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign with amil/password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential _result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = _result.user;
      print(_userFromFirebaseUser(user));
      return _userFromFirebaseUser(user);
    } catch (e) {
      error_signIn = e.toString();
      print('errror: ' + error_signIn);
      return null;
    }
  }

  //register  with amil/password

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential _result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = _result.user;
      print(_userFromFirebaseUser(user));
      return _userFromFirebaseUser(user);
    } catch (e) {
      error_register = e.toString();
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
