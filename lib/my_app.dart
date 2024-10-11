import 'package:flutter/material.dart';
import 'package:login/Constants/string.dart';
import 'package:login/Views/Screen/homeScreen.dart';
import 'package:login/Views/Screen/loginScreen.dart';
import 'package:login/Views/Screen/splashScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      routes: {
        AppString.splashRoute: (context) => const SplashScreen(),
        AppString.loginRoute: (context) => const LoginScreen(),
        AppString.homeRoute: (context) => const HomeScreen(),
      },
      initialRoute: AppString.splashRoute,
      //home: const LoginScreen(),
    );
  }
}
