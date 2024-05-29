import 'package:get/get.dart';
import 'package:medgpt/screens/Home/Chatbot/models/chatbot.dart';
import 'package:medgpt/utils/constants.dart';
import '../models/message.dart';

class ChatController extends GetxController {
  var conversation = <Message>[].obs;
  var loading = false.obs;

  Future<void> sendMessage(String userPrompt) async {
    loading.value = true;
    final userMessage = Message(
      user: true,
      message: userPrompt,
      date: Constants.getFormattedDate(),
    );
    conversation.add(userMessage);

    final loadingMessage = Message(
      user: false,
      message: "Loading...",
      date: Constants.getFormattedDate(),
    );
    conversation.add(loadingMessage);

    try {
      String? botResponse = await ChatBot.getResponse(userPrompt);

      conversation.remove(loadingMessage);

      final botMessage = Message(
        user: false,
        message: botResponse ?? "No response",
        date: Constants.getFormattedDate(),
      );
      conversation.add(botMessage);
    } catch (e) {
      conversation.remove(loadingMessage);

      final errorMessage = Message(
        user: false,
        message: "Couldn't get the answer",
        date: Constants.getFormattedDate(),
      );
      conversation.add(errorMessage);
    }
    loading.value = false;
  }
}
