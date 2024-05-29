import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  static final UserModel _instance = UserModel._internal();
  factory UserModel() => _instance;
  UserModel._internal();

  String? email;
  String? fullName;
  String? age;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> getUserInfos() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot documentSnapshot =
            await _firebaseFirestore.collection("users").doc(user.uid).get();

        if (documentSnapshot.exists) {
          Map<String, dynamic>? data =
              documentSnapshot.data() as Map<String, dynamic>?;
          if (data != null) {
            email = data['email'] as String?;
            fullName = data['name'] as String?;
            age = data['age'] as String?;
          }
        } else {
          print('User data not found');
        }
      } else {
        print('No user is currently signed in');
      }
    } catch (e) {
      print('Failed to get user data: $e');
    }
  }
}
