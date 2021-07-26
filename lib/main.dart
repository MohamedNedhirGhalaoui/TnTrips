import 'package:tn_trips/models/user.dart';
import 'package:tn_trips/screens/Welcome/loading.dart';
import 'package:tn_trips/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CurrentUser?>.value(
      value: AuthService().user,
      initialData: CurrentUser(uid: '1'),
      child: MaterialApp(
        home: Loading(),
      ),
    );
  }
}
