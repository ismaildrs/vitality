import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Auth/sign_up/controllers/SignUpController.dart';
import 'package:medgpt/screens/Auth/Widgets/ButtonShape.dart';
import 'package:medgpt/screens/Auth/widgets/InputField.dart';
import 'package:medgpt/utils/constants.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                        "Create Your Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                        "Fill the fields bellow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                InputField(
                  controller: signUpController.nameTextController,
                  label: "Name",
                  icon: Icons.person,
                ),
                InputField(
                  controller: signUpController.ageTextController,
                  label: "Date of birth",
                  textInputType: TextInputType.number,
                ),
                InputField(
                  controller: signUpController.emailTextController,
                  label: "Email",
                  icon: Icons.email,
                ),
                InputField(
                    controller: signUpController.passwordTextController,
                    label: "Password",
                    icon: Icons.key,
                    obscureText: true),
                InputField(
                    controller: signUpController.confirmPasswordTextController,
                    label: "Password",
                    icon: Icons.key,
                    obscureText: true),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.all(Constants.padding),
                  child: InkWell(
                    onTap: () {
                      if (signUpController.checkInput())
                        signUpController.signUp();
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
                          "You already have an account?",
                        ),
                        InkWell(
                          onTap: () => Get.offNamed("/signin"),
                          child: Text(
                            " Sign In",
                            style: TextStyle(
                                color: Color(Constants.darkBlueTheme)),
                          ),
                        )
                      ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
