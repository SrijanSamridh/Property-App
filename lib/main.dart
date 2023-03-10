
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prop/Screens/home/home_screen.dart';
import 'package:prop/utils/constants.dart';

import 'Screens/Login/login_screen.dart';
import 'Screens/SplashScreens/splash.dart';
import 'Screens/api_test.dart';
import 'Screens/components/bottomNavigationBar.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      // home: const HomeScreen(),
      initialRoute: '/api_test',
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/navigator': (context) => const MyBottomNavBar(),
        '/api_test': (context) => const ApiTest(),
      },
    );
  }
}

