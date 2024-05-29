import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Auth/sign_in/controllers/SignInController.dart';
import 'package:medgpt/screens/Auth/widgets/ButtonShape.dart';
import 'package:medgpt/screens/Auth/widgets/InputField.dart';
import 'package:medgpt/utils/constants.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                child: const Column(
                  children: [
                    Text(
                      "Welcome back!",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "Enter your email and password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              InputField(
                controller: signInController.emailTextController,
                label: "Email",
                icon: Icons.email,
              ),
              InputField(
                controller: signInController.passwordTextController,
                label: "Password",
                icon: Icons.key,
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                child: const InkWell(
                    child: Text(
                  "Forgot your password?",
                  textAlign: TextAlign.end,
                )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: InkWell(
                  onTap: () {
                    if (signInController.checkInput()) signInController.login();
                  },
                  child: const ButtonShape(
                    texte: "Sign In",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                child: InkWell(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      const Text(
                        "You don't have an account?",
                      ),
                      InkWell(
                        onTap: () => Get.offNamed("/signup"),
                        child: Text(
                          " Create one",
                          style:
                              TextStyle(color: Color(Constants.darkBlueTheme)),
                        ),
                      )
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
