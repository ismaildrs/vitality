import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();
  final nameTextController = TextEditingController();
  final ageTextController = TextEditingController();

  Future<bool> checkEmailExists(String email) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: 'fakepassword',
      );
      await result.user?.delete();
      return false;
    } catch (error) {
      if (error is FirebaseAuthException &&
          error.code == 'email-already-in-use') {
        return true;
      }
      rethrow;
    }
  }

  Future<void> signUp() async {
    if (!checkInput()) {
      return;
    }

    try {
      // Check if the email already exists
      bool emailExists =
          await checkEmailExists(emailTextController.text.trim());
      if (emailExists) {
        Get.snackbar('Error', 'Email already in use');
        return;
      }

      // Create user with email and password
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailTextController.text.trim().trim(),
        password: passwordTextController.text.trim().trim(),
      );

      // Add user information to Firestore
      try {
        await _firestore.collection('users').doc(userCredential.user?.uid).set({
          'name': nameTextController.text.trim().trim(),
          'age': int.tryParse(ageTextController.text.trim()) ?? 0,
          'email': emailTextController.text.trim(),
        });
      } catch (firestoreError) {
        Get.snackbar(
            'Error', 'Failed to add user info to Firestore: $firestoreError');
        return;
      }

      Get.snackbar('Success', 'Account created successfully');
      Get.offNamed("/dashboard");
    } catch (authError) {
      Get.snackbar('Error', 'Failed to create account: $authError');
    }
  }

  bool checkInput() {
    String name = nameTextController.text.trim();
    String age = ageTextController.text.trim();
    String email = emailTextController.text.trim();
    String password = passwordTextController.text.trim();
    String confirmPassword = confirmPasswordTextController.text.trim();

    if (name.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter a valid name",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    if (age.isEmpty || int.tryParse(age) == null) {
      Get.snackbar(
        "Error",
        "Please enter a valid age",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

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

    if (password != confirmPassword) {
      Get.snackbar(
        "Error",
        "Passwords do not match",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    return true;
  }
}
