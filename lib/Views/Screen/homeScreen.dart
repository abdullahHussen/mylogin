import 'package:flutter/material.dart';
import 'package:login/Constants/extensions.dart';
import 'package:login/Constants/string.dart';
import 'package:login/Controllers/shared_pref_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/welcome-back.png",
                  height: 200,
                ),
                const Text(
                  "Name,",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Text(
                  userData[AppString.userName],
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Phone Number,",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Text(
                  userData[AppString.phoneNumber],
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                20.gap,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      SharedPrefdController sharedPrefdController =
                          SharedPrefdController();
                      sharedPrefdController
                          .removeUserData(key: AppString.userName)
                          .then((value) => Navigator.pushReplacementNamed(
                              context, AppString.splashRoute));
                    },
                    child: const Text(
                      "Remove Name",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                10.gap,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      SharedPrefdController sharedPrefdController =
                          SharedPrefdController();
                      sharedPrefdController
                          .removeUserData(key: AppString.phoneNumber)
                          .then((value) => Navigator.pushReplacementNamed(
                              context, AppString.splashRoute));
                    },
                    child: const Text(
                      "Remove Phone Number",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                10.gap,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      SharedPrefdController sharedPrefdController =
                          SharedPrefdController();
                      sharedPrefdController
                          .removeUserData(key: AppString.password)
                          .then((value) => Navigator.pushReplacementNamed(
                              context, AppString.splashRoute));
                    },
                    child: const Text(
                      "Remove Password",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                10.gap,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      SharedPrefdController sharedPrefdController =
                          SharedPrefdController();
                      sharedPrefdController.clearUserData().then((value) =>
                          Navigator.pushReplacementNamed(
                              context, AppString.splashRoute));
                    },
                    child: const Text(
                      "Delete All",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
