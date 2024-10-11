import 'package:flutter/material.dart';
import 'package:login/Constants/extensions.dart';
import 'package:login/Constants/string.dart';
import 'package:login/Controllers/shared_pref_controller.dart';
import 'package:login/Views/Widget/my_text_from_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController phoneNumper = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/account.png",
                    height: 200,
                  ),
                  10.gap,
                  MyTextFromFiled(Controller: userName, Label: "User Name"),
                  10.gap,
                  MyTextFromFiled(
                      Controller: phoneNumper, Label: "Phone Number"),
                  10.gap,
                  MyTextFromFiled(
                    Controller: password,
                    Label: "Password",
                    Obscure: true,
                  ),
                  10.gap,
                  InkWell(
                    onTap: () {
                      SharedPrefdController sharedPrefdController =
                          SharedPrefdController();
                      sharedPrefdController
                          .addUserData(
                              userName: userName.text,
                              phoneNumber: phoneNumper.text,
                              password: password.text)
                          .then((value) => Navigator.pushReplacementNamed(
                                  context, AppString.homeRoute,
                                  arguments: {
                                    AppString.userName: userName.text,
                                    AppString.phoneNumber: phoneNumper.text,
                                    AppString.password: password.text
                                  }));
                    },
                    child: const Text(
                      "logen",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent, fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
