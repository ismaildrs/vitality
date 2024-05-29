import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Home/Chatbot/controllers/chatController.dart';
import 'package:medgpt/screens/Home/Chatbot/views/widgets/chatbot_header.dart';
import 'package:medgpt/screens/Home/chatbot/views/widgets/input_field.dart';
import 'package:medgpt/screens/Home/chatbot/views/widgets/msg_section.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const ChatbotHeader(),
              MessageSection(),
              UserInputField(),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
