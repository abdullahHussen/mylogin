import 'package:flutter/material.dart';
import 'package:login/Constants/string.dart';
import 'package:login/Controllers/shared_pref_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // This widget is the root of your application.
  @override
  void initState() {
    SharedPrefdController sharedPrefdController = SharedPrefdController();
    sharedPrefdController.getUserData().then(
      (respons) {
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            if (respons[AppString.userName] != null &&
                respons[AppString.password] != null &&
                respons[AppString.phoneNumber] != null) {
              Navigator.pushReplacementNamed(context, AppString.homeRoute,
                  arguments: respons);
            } else {
              Navigator.pushReplacementNamed(context, AppString.loginRoute);
            }
          }
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  height: 200,
                ),
                const Text(
                  "L O G I N",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.greenAccent,
        child: const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: CircularProgressIndicator(
            backgroundColor: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
