import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

class ChatBot {
  static final gemini = Gemini.instance;

  static Future<String?> getResponse(String prompt) async {
    try {
      final value = await gemini.text(prompt);
      return value?.output; // or return value?.content?.parts?.last.text
    } catch (e) {
      Get.snackbar("Error", "Couldn't get the answer");
      return null;
    }
  }
}
