import 'package:tn_trips/data/models/current_user.dart';
import 'package:tn_trips/ui/authenticate/login/login_screen.dart';
import 'package:tn_trips/ui/authenticate/signup/signup_screen.dart';
import 'package:tn_trips/ui/home/home.dart';
import 'package:tn_trips/ui/home/page/cafes_page.dart';
import 'package:tn_trips/ui/home/page/chats_page.dart';
import 'package:tn_trips/ui/home/page/contact_us_page.dart';
import 'package:tn_trips/ui/home/page/detailes_page.dart';
import 'package:tn_trips/ui/home/page/favourites_page.dart';
import 'package:tn_trips/ui/home/page/hotels_page.dart';
import 'package:tn_trips/ui/home/page/location_page.dart';
import 'package:tn_trips/ui/home/page/map_page.dart';
import 'package:tn_trips/ui/home/page/notifications_page.dart';
import 'package:tn_trips/ui/home/page/recommended_places_page.dart';
import 'package:tn_trips/ui/home/page/restaurants_page.dart';
import 'package:tn_trips/ui/home/page/selected_category_service.dart';
import 'package:tn_trips/ui/home/page/selected_city_page.dart';
import 'package:tn_trips/ui/home/page/settings_page.dart';
import 'package:tn_trips/ui/home/page/sports_page.dart';
import 'package:tn_trips/ui/home/page/user_page.dart';
import 'package:tn_trips/ui/routes/wrapper.dart';
import 'package:tn_trips/ui/welcome/onboarding_page.dart';
import 'package:tn_trips/ui/welcome/splash_screen.dart';
import 'package:tn_trips/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/ui/welcome/welcome_screen.dart';
import 'package:tn_trips/use_cases/category_selection.dart';
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
        ),
        Provider(
          create: (_) => CategorySelection(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Raleway'),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(
                duration: 3,
                goTopage: '/wrapper',
              ),
          '/wrapper': (context) => Wrapper(),
          '/welcomeScreen': (context) => WelcomeScreen(),
          '/onboardingpage': (context) => OnBoardingPage(),
          '/signUpScreen': (context) => SignUpScreen(),
          '/loginScreen': (context) => LoginScreen(),
          '/home': (context) => Home(),
          '/selectedCityPage': (context) => SelectedCityPage(),
          '/selectedCategoryService': (context) => SelectedCategoryService(),
          '/detailesPage': (context) => DetailsPage(),
          '/cafesPage': (context) => CafesPage(),
          '/chatsPage': (context) => ChatsPage(),
          '/contactUs': (context) => ContactUsPage(),
          '/favouritesPage': (context) => FavouritesPage(),
          '/hotelsPage': (context) => HotelsPage(),
          '/locationPage': (context) => LocationPage(),
          '/mapPage': (context) => MapPage(),
          '/notificationPage': (context) => NotificationsPage(),
          '/recommendedPlaces': (context) => RecommendedPlacesPage(),
          '/restaurantsPage': (context) => RestaurantsPage(),
          '/settingsPage': (context) => SettingsPage(),
          '/sportsPage': (context) => SportsPage(),
          '/userPage': (context) => UserPage()
        },
      ),
    );
  }
}
