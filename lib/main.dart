import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './Screens/Cat_Screen.dart';
import './Screens/Nav_Screen.dart';
import './Screens/home_screen.dart';
import './Screens/About_Screen.dart';
import './Screens/Splash_Screen.dart';
import './Screens/CreateDonation.dart';
import './Screens/UserDashboard/Dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyDonate App',
      theme: ThemeData(fontFamily: "Poppins"),
      home: const SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => const SplashScreen(),
        NavScreen.routeName: (ctx) => const NavScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        CategoryScreen.routeName: (ctx) => const CategoryScreen(),
        AboutScreen.routeName: (ctx) => const AboutScreen(),
        CreateDonate.routeName: (ctx) => const CreateDonate(),
        Dashboard.routeName: (ctx) => const Dashboard(),
      },
    );
  }
}
