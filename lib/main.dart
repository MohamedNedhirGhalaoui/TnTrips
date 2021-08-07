import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/ui/welcome/splash-screen.dart';
import 'package:tn_trips/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/use_cases/login_with_googleAcounte.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<CurrentUser?>.value(
          value: AuthService().user,
          initialData: CurrentUser(uid: null),
        ),
        Provider(
          create: (_) => LoginWithGoogleAcounte(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Loading(),
      ),
    );
  }
}
