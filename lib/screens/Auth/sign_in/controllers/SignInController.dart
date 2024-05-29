import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  bool checkInput() {
    String email = emailTextController.text;
    String password = passwordTextController.text;
    if (email.isEmpty || !GetUtils.isEmail(email)) {
      Get.snackbar(
        "Error",
        "Please enter a valid email address",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    if (password.isEmpty || password.length < 8) {
      Get.snackbar(
        "Error",
        "Password must be at least 8 characters long",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  Future<void> login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailTextController.text.trim(),
        password: passwordTextController.text.trim(),
      );

      // Login successful
      Get.snackbar('MedGPT', 'Logged in successfully');
      Get.offNamed("/dashboard");
    } catch (error) {
      // Login failed
      Get.snackbar('MedGPT', 'Check your email or password!');
    }
  }
}
