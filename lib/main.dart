import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Auth/sign_in/views/SignInPage.dart';
import 'package:medgpt/screens/Auth/sign_up/views/SignUpPage.dart';
import 'package:medgpt/screens/Auth/welcome/views/auth.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Dashboard.dart';
import 'package:medgpt/screens/Home/chatbot/views/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  Gemini.init(apiKey: 'Put your api key here');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute:
          (FirebaseAuth.instance.currentUser == null) ? '/auth' : '/dashboard',
      getPages: [
        GetPage(name: '/auth', page: () => const AuthPage()),
        GetPage(name: '/dashboard', page: () => const DashboardPage()),
        GetPage(name: '/chatbot', page: () => ChatScreen()),
        GetPage(name: '/signin', page: () => SignInPage()),
        GetPage(name: '/signup', page: () => SignUpPage()),
      ],
    );
  }
}
