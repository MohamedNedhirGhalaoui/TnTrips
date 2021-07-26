import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/ui/welcome/welcome_loading.dart';
import 'package:tn_trips/data/services/auth_service.dart';
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
